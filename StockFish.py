import chess
import chess.engine
import serial
#Const instruction header
NEW_GAME = 0
CHOOSE_SIDE = 1
UNDO_MOVE = 2
SET_LEVEL = 3
MOVE = 4
PIECE = 5
ERROR = 7
FILE = dict(zip(range(8), "ABCDEFGH"))
RANK = dict(zip(range(8), range(1,9)))
COLOR = {0:"WHITE", 1:"BLACK"}
PROMOTE_PIECE = {0:"ROOK", 1:"KNIGHT", 2:"Bishop", 3:"QUEEN"}
class Stockfish:
    def __init__(self) -> None:
        self.engine = chess.engine.SimpleEngine.popen_uci("stockfish.exe")
        self.board = chess.Board()
        self.level = 1 # Bot level 1 - 5 depth(4, 6, 8, 12, 20)
    def new_game(self, fen:str = "" )-> None:
        self.board = chess.Board(fen)
    def make_move(self, move:chess.Move) -> None:
        self.board.push(move)
    def undo_move(self) -> chess.Move:
        return self.board.pop()
    def get_move(self, depth:int) -> chess.Move:
        temp = None
        with self.engine.analysis(self.board, chess.engine.Limit(mate = 10)) as analysis:
            for info in analysis:
                #print(info.get('score'), info.get('pv'))
                temp = info.get('pv')[0]
                if info.get('seldepth', 0) > depth:
                    return temp
        return temp 
    def check_move(self, move:chess.Move) -> bool:
        return move in self.board.legal_moves
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
                port = "/dev/serial0",
                baudrate = 115200,
                bytesize = serial.EIGHTBITS,
                parity = serial.PARITY_NONE,
                timeout = None
            )
    def _send_TX(self, data:bytearray) -> int:
        return self.__ser.write(data)
    def _read_RX(self):
        if self.ser.in_waiting:
            return self.__ser.read(self.ser.in_waiting)
        return None
    def decode_data(self, data:bytes) -> str:
        print(f"DECODED : {data}")
        bin_word = [bin(int(b))[2:] for b in data]
        print(bin_word)

def decode_data( received_data:bytes) -> str:
    data = 0
    if len(received_data) > 1:#16 bits
        data |= received_data[0] <<  8
        data |= received_data[1]
        instruction_header = (data >> 13) & 7
        pay_load = data & 8191
    else:#8 bits
        data |= received_data[0]
        data = 108
        instruction_header = (data >> 5) & 7
        pay_load = data & 31
    print(f"instruction : {bin(instruction_header)[2:]}")
    print(f"pay_load : {bin(pay_load)[2:]}")
    if instruction_header == MOVE:
        from_file = (pay_load & 7168) >> 10
        from_rank = (pay_load & 896) >> 7
        to_file = (pay_load & 112) >> 4
        to_rank = (pay_load & 14) >> 1
        print(bin(from_file), bin(from_rank), bin(to_file), bin(to_rank))
        print(FILE[from_file], RANK[from_rank], FILE[to_file], RANK[to_rank])
    
    elif instruction_header == NEW_GAME:
        #NEW GAME
        pass
    elif instruction_header == CHOOSE_SIDE:
        side = (pay_load >> 4) & 1
        print(f"Select {COLOR[side]}")
    elif instruction_header == SET_LEVEL:
        level = (pay_load >> 2) & 7
        print(f"Bot level : {level + 1}")
    elif instruction_header == PIECE:
        piece = (pay_load >> 3) & 3
        print(f"Select piece : {PROMOTE_PIECE[piece]}")
    elif instruction_header == ERROR:
        print("ERROR!!!")
decode_data(input().encode('utf-8'))