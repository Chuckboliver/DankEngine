import chess
import chess.syzygy
import chess.polyglot
from POVScore import *
from copy import deepcopy
from random import choice

class ChessBot:
    def __init__(self, botBoard:chess.Board, level:int = 1, Color:chess.Color = chess.BLACK) -> None:
        self.level = level
        self.Color = Color
        self.playedBoard = botBoard
    def getMove(self, depth:int = 2) -> chess.Move:
        with chess.polyglot.open_reader("poly16/books/elo-3300.bin") as books:
            listEntry = []
            for entry in books.find_all(self.playedBoard):
                listEntry.append(entry)
            if listEntry:
                entry = choice(listEntry)
                move = entry.move
                print(f"Book move : {move}")
            else:
                print("AlphaBeta!")
                move = alphabeta(self.playedBoard, self.Color, depth)[0]
        return move
def makeMove(board:chess.Board, move:chess.Move) -> chess.Board:
    newBoard = deepcopy(board)
    newBoard.push(move)
    return newBoard
def unMakeMove(board:chess.Board) -> chess.Board:
    newBoard = deepcopy(board)
    newBoard.pop()
    return newBoard
def materialSum(board:chess.Board, color:chess.Color) -> int:
    material = 0
    for piece in board.piece_map().values():
        if piece.color == color:
            material += PIECE_VALUES[piece.piece_type]
    return material
def materialBalance(board:chess.Board) -> int:
    return materialSum(board, chess.WHITE) - materialSum(board, chess.BLACK)
def isOpenFile(board:chess.Board, file:int) -> bool:
    for rank in range(8):
        if board.piece_at(chess.square(file, rank)) == chess.PAWN:
            return False
    return True
def isSemiOpenFile(board:chess.Board, file:int) -> bool:
    count = 0
    for rank in range(8):
        if board.piece_at(chess.square(file, rank)) == chess.PAWN:
            if count < 1:
                count += 1
            else:
                return False
    return True
           
def isEndGame(board:chess.Board):
    return len(board.piece_map()) <= ENDGAME_PIECE_COUNT
def positionalBonus(board:chess.Board, color:chess.Color):
    bonus = 0
    offset = 0
    if color == chess.WHITE:
        offset = 0
    elif color == chess.BLACK:
        offset = 63
    for n,piece in board.piece_map().items():
        if piece.color == color:
            if piece.piece_type == chess.PAWN:
                bonus += PAWN_BONUS[offset - n]
            elif piece.piece_type == chess.KNIGHT:
                bonus += KNIGHT_BONUS[offset  - n]
            elif piece.piece_type == chess.BISHOP:
                bonus += BISHOP_BONUS[offset - n]
            elif piece.piece_type == chess.ROOK:
                RookAtFile = chess.square_file(n)
                if isOpenFile(board, RookAtFile):
                    bonus += ROOK_OPEN_FILE_BONUS
                elif isSemiOpenFile(board, RookAtFile):
                    bonus += ROOK_SEMI_OPEN_FILE_BONUS
                if chess.square_rank(offset - n) == 6:
                    bonus += ROOK_ON_SEVENTH_BONUS
            elif piece.piece_type == chess.KING:
                if isEndGame(board):
                    bonus += KING_ENDGAME_BONUS[offset - n]
                else:
                    bonus += KING_BONUS[offset - n]
    return bonus
def positionalBalance(board:chess.Board) -> int:
    return positionalBonus(board, chess.WHITE) - positionalBonus(board, chess.BLACK)
def winScore(color:chess.Color) -> int:
    if color == chess.WHITE:
        return -10 * PIECE_VALUES[chess.KING]
    else:
        return 10 * PIECE_VALUES[chess.KING]
def evalEndNode(board:chess.Board):
    if board.is_checkmate():
        return winScore(board.turn)
    elif board.is_stalemate() or \
         board.is_insufficient_material() or \
         board.is_seventyfive_moves():
         return 0
def evalGame(board:chess.Board) -> int:
    if board.is_game_over():
        return evalEndNode(board)
    return materialBalance(board) + positionalBalance(board)

def evalMove(board:chess.Board, color:chess.Color) -> tuple[chess.Move, int]:
    bestScore = winScore(color)
    bestMove = []
    for move in board.legal_moves:
        evaluation = evalGame(makeMove(board, move))
        if makeMove(board, move).is_checkmate():
            return (move, evaluation)
        if color == chess.WHITE and evaluation > bestScore or \
            color == chess.BLACK and evaluation < bestScore :
            bestScore = evaluation
            bestMove = [move]
        elif evaluation == bestScore:
            bestMove.append(move)
    return (choice(bestMove), bestScore)
#Alpha Beta pruning algorithm for bruteforce search best move
def alphabeta(board:chess.Board, color:chess.Color, depth:int, alpha = -float('inf'), beta = float('inf')) :
    """
    alpha : Best value that maximizer can guarantee at that level or above
    beta : Best value that minimizer can guarantee at that level or above
    """
    #game over
    if board.is_game_over():
        return (None, evalGame(board))
    (simpleMove, simpleEval) = evalMove(board, color)#get move
    #Base case if Winned move or at maximum depth
    if depth == 1 or \
       simpleEval == winScore(not color):
        return (simpleMove, simpleEval)
    bestMove = []
    #Maximizing player
    if color == chess.WHITE:
        for move in board.legal_moves:
            newBoard = makeMove(board, move)#Move in simulation board
            (_, score) = alphabeta(newBoard, not color, depth - 1, alpha, beta)#get score of each move
            #WIN!!!
            if score == winScore(not color):
                return (move, score)
            #Score equal to alpha -> Have many best move
            if score == alpha:
                bestMove.append(move)
            #Score greater than alpha -> Have new best move
            if score > alpha:
                alpha = score
                bestMove = [move]
                if alpha > beta:
                    break
        if bestMove:
            return (choice(bestMove), alpha) 
        else:
            return (None, alpha)
    #Minimizing player
    if color == chess.BLACK:
        for move in board.legal_moves:
            newBoard = makeMove(board, move)#Move in simulation board
            (_, score) = alphabeta(newBoard, not color, depth - 1, alpha, beta)#get score of each move
             #WIN!!!
            if score == winScore(not color):
                return (move, score)
            #Score equal to beta -> Have many best move
            if score == beta:
                bestMove.append(move)
            #Score smaller than beta -> Have new best move
            if score < beta:
                beta = score
                bestMove = [move]
                if alpha > beta:
                    break
        if bestMove:
            return (choice(bestMove), beta)
        else:
            return (None, beta)




        