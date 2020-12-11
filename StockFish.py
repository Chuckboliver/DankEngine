import chess
import chess.engine
import serial
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
    def set_level(self, level:int):
        if 1 <= level <= 5:
            self.level = level
        else:
            print(f"Error : level not in range.")
