import chess
import chess.engine
import serial
#Const instruction header
NEW_GAME = 0
CHOOSE_SIDE = 1
SET_LEVEL = 2
MOVE = 3
PIECE = 4
ERROR = 5
FILE = dict(zip(range(8), "abcdefgh"))
RANK = dict(zip(range(8), range(1,9)))
COLOR = {0:chess.WHITE, 1:chess.BLACK}
PROMOTE_PIECE = {0:chess.ROOK, 1:chess.KNIGHT, 2:chess.BISHOP, 3:chess.QUEEN}
class Stockfish:
    def __init__(self) -> None:
        self.engine = chess.engine.SimpleEngine.popen_uci("stockfish.exe")
        self.board = chess.Board()
        self.level = 1 # Bot level 1 - 5 depth(4, 6, 8, 12, 20)
        self.choosed_side = chess.BLACK
        self.side = None
        self.difficulty = {1:4, 2:6, 3:8, 4:12, 5:20}
    def is_engine_turn(self) -> bool:
        return self.board.turn == self.side
    def set_side(self, color:chess.Color) -> None:
        self.choosed_side = color
    def new_game(self, fen:str = None )-> None:
        self.board = chess.Board(fen) if fen is not None else chess.Board()
        self.side = self.choosed_side
    def _isPromotedMove(self, move_uci:str) -> bool:
        return any([move_uci + pr in self.board.legal_moves for pr in ['q', 'r', 'n', 'b']])
    def make_move(self, move_uci:str) -> None:
        move = self.board.parse_uci(move_uci)
        if move in self.board.legal_moves:
            self.board.push(move)
        else:
            raise ValueError("Illegal move.")
    def undo_move(self) -> chess.Move:
        return self.board.pop()
    def get_move(self, depth:int) -> chess.Move:
        temp = None
        with self.engine.analysis(self.board, chess.engine.Limit(mate = 10)) as analysis:
            for info in analysis:
                #print(info.get('score'), info.get('pv'))
                if info.get('pv') is not None:
                    temp = info.get('pv')[0]
                if info.get('seldepth', 0) > depth:
                    return temp
        return temp 
    def analysis(self, depth:int) -> None:
        info =  self.engine.analyse(self.board, chess.engine.Limit(depth = depth))
        print(f"Color : {'WHITE' if info['score'].turn else 'BLACK'}")
        print(f"Score : {info['score']}")
        print(f"POV : WHITE -> {info['score'].white()}, BLACK -> {info['score'].black()}")
        print(f"Depth : {info['depth']}")
        print(f"Moves : {info['pv']}")
        print(f"Nodes : {info['nodes']}")
        print(f"NPS : {info['nps']}")
        print(f"FEN : {self.board.fen()}")
    def set_level(self, level:int) -> None:
        if 1 <= level <= 5:
            self.level = level
        else:
            print(f"Error : level not in range.")
class Comm:
    def __init__(self) -> None:
        self.__ser = serial.Serial(
                port = "COM3",
                baudrate = 9600,
                bytesize = serial.EIGHTBITS,
                parity = serial.PARITY_NONE,
                timeout = None
            )
        self.__engine = Stockfish()
    def get_engine(self) -> Stockfish:
        return self.__engine
    def send_TX(self, data) -> int:
        print(f"Send : {data}")
        return self.__ser.write(data)
    def read_RX(self) -> bytes:
        if self.__ser.in_waiting:
            return self.__ser.read(1)
    def in_waiting(self) -> int:
        return self.__ser.in_waiting
    @staticmethod
    def make_data( header:int, pay_load:int) -> int:
        data = 0
        if header == ERROR or header == NEW_GAME or header == CHOOSE_SIDE:
            data |= header << 5
            pay_load <<= 4
            data |= pay_load
        elif header  == SET_LEVEL:
            data |= header << 5
            pay_load <<= 2
            data |= pay_load
        elif header == MOVE:
            data |= header << 13
            pay_load <<= 1
            data |= pay_load
        return data
    @staticmethod
    def encode_move(uci:str) -> int:
        file = dict(zip("abcdefgh", range(8)))
        rank = dict(zip("12345678", range(8)))
        from_file, from_rank, to_file, to_rank = uci
        from_file, from_rank, to_file, to_rank  = file[from_file], rank[from_rank], file[to_file], rank[to_rank]
        data = 0
        for i in range(4):
            data |= [from_file, from_rank, to_file, to_rank][i] << (9 - 3 * i)
        return data
    @staticmethod
    def decode_data(received_data:bytes):
        data = 0
        print(f"Data size : {len(received_data)} byte")
        if len(received_data) > 1:#16 bits
            data |= received_data[0] <<  8
            data |= received_data[1]
            instruction_header = (data >> 13) & 7
            pay_load = data & 8191
        else:#8 bits
            data |= received_data[0]
            instruction_header = (data >> 5) & 7
            pay_load = data & 31
        print(f"instruction : {bin(instruction_header)[2:]}")
        print(f"pay_load : {bin(pay_load)[2:]}")
        if instruction_header == MOVE:
            second_half_data = None
            while second_half_data is None:
                if game.in_waiting():
                    second_half_data = game.read_RX()
            pay_load = (pay_load << 8) | second_half_data[0]
            from_file = (pay_load >> 10) & 7
            from_rank = (pay_load >> 7) & 7
            to_file = (pay_load >> 4) & 7
            to_rank = (pay_load >> 1) & 7
            move_uci =  FILE[from_file] + str(RANK[from_rank]) + FILE[to_file] + str(RANK[to_rank])
            print(f"move_uci : {move_uci}")
            return (MOVE, move_uci)
        elif instruction_header == NEW_GAME:
            print("NEW GAME!!!")
            return (NEW_GAME, None)
        elif instruction_header == CHOOSE_SIDE:
            side = (pay_load >> 4) & 1
            print(f"Select {'WHITE' if COLOR[side] else 'BLACK'}")
            return (CHOOSE_SIDE, not COLOR[side])
        elif instruction_header == SET_LEVEL:
            level = (pay_load >> 2) & 7
            print(f"Bot level : {level + 1}")
            return (SET_LEVEL, level + 1)
        elif instruction_header == PIECE:
            piece = (pay_load >> 3) & 3
            print(f"Select piece : {PROMOTE_PIECE[piece]}")
            return (PIECE, PROMOTE_PIECE[piece])
        elif instruction_header == ERROR:
            error_code = (pay_load >> 2) & 7
            print(f"Error : {error_code}")
            return (ERROR, error_code)
        else:
            return (ERROR, ERROR)
if __name__ == "__main__":
    try:
        game = Comm()
        engine = game.get_engine()
        bot_move = None
        print("-----------------------------------------")
        while True:
            if game.in_waiting():
                data = game.read_RX()
                print(f"Read : {data}")
                header, inside_data = game.decode_data(data)
                if header == NEW_GAME:
                    engine.new_game()
                    if engine.is_engine_turn():
                        bot_move = engine.get_move(engine.difficulty[engine.level]).uci()
                        send_data = game.make_data(MOVE, game.encode_move(bot_move)).to_bytes(2, 'big', signed=False)
                        print(f"Bot<{'WHITE' if engine.side == 1 else 'BLACK'}> want to move : {bot_move}")
                        game.send_TX(send_data)
                elif header == MOVE:
                    if engine.is_engine_turn():
                        if inside_data == bot_move:
                            engine.make_move(inside_data)
                        else:
                            send_data = game.make_data(ERROR, ERROR)
                            print("Error move")
                            game.send_TX(send_data)
                    else:
                        try:
                            engine.make_move(inside_data)
                            bot_move = engine.get_move(engine.difficulty[engine.level]).uci()
                            send_data = game.make_data(MOVE, game.encode_move(bot_move)).to_bytes(2, 'big', signed=False)
                            print(f"Bot<{'WHITE' if engine.side == 1 else 'BLACK'}> want to move : {bot_move}")
                            game.send_TX(send_data)
                            print("Finish send")
                        except (ValueError, AttributeError):
                            if engine._isPromotedMove(inside_data):
                                bot_move = inside_data
                                send_data = game.make_data(ERROR, PIECE)
                                game.send_TX(send_data)
                            else:
                                send_data = game.make_data(ERROR, ERROR)
                                game.send_TX(send_data)
                elif header == CHOOSE_SIDE:
                    try:
                        engine.set_side(inside_data)
                    except:
                        send_data = game.make_data(ERROR, CHOOSE_SIDE)
                        game.send_TX(send_data)
                elif header == SET_LEVEL:
                    try:
                        engine.set_level(inside_data)
                    except:
                        send_data = game.make_data(ERROR, SET_LEVEL)
                        game.send_TX(send_data)
                elif header == PIECE:
                    promote = {chess.ROOK:'r', chess.KNIGHT:'n', chess.BISHOP:'b', chess.QUEEN:'q'}
                    move = bot_move + promote[inside_data]
                    try:
                        engine.make_move(move)
                    except ValueError:
                        send_data = game.make_data(ERROR, PIECE)
                        game.send_TX(send_data)
                elif header == ERROR:
                    print(f"ERROR : {inside_data}")
                print("-----------------------------------------")
    except KeyboardInterrupt:
        print("END PROGRAM.")
    except serial.SerialException:
        print("Cannot open port.")