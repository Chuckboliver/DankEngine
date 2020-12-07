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
        # with chess.polyglot.open_reader("poly16/books/elo-3300.bin") as books:
        #     listEntry = []
        #     for entry in books.find_all(self.playedBoard):
        #         listEntry.append(entry)
        #     if listEntry:
        #         entry = choice(listEntry)
        #         move = entry.move
        #         print(f"Book move : {move}")
        #     else:
        #print("AlphaBeta!")
        move = alphabeta(self.playedBoard, self.Color, depth)[0]
        #move = QuiescentSearch(self.playedBoard, self.Color)[0]
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
def staticEvaluation(board:chess.Board) -> int:
    if board.is_game_over():
        return evalEndNode(board)
    return materialBalance(board) + positionalBalance(board)
def staticSearch(board:chess.Board, color:chess.Color) -> tuple[chess.Move, int]:
    bestScore = winScore(color)
    bestMove = []
    for move in board.legal_moves:
        evaluation = staticEvaluation(makeMove(board, move))
        if makeMove(board, move).is_checkmate():
            return (move, evaluation)
        if color == chess.WHITE and evaluation > bestScore or \
            color == chess.BLACK and evaluation < bestScore :
            bestScore = evaluation
            bestMove = [move]
        elif evaluation == bestScore:
            bestMove.append(move)
    return (choice(bestMove), bestScore)
def getCaptureSequences(cap_moves:list[chess.Move], board:chess.Board, targetedSquare:chess.Square):
    pass
def StaticExchangeEvaluation(board:chess.Board, targetedSquare:chess.Square) -> int:
    captureMoves = []
    attackCount = getCaptureSequences(captureMoves, board, targetedSquare)
    value = 0
    if attackCount > 0:
        newBoard = makeMove(board, captureMoves[0])
        piece_value = PIECE_VALUES[board.piece_at(targetedSquare)]
        value = piece_value - StaticExchangeEvaluation(newBoard, targetedSquare)
    return value if value > 0 else 0
def generateLegalCaptures(board:chess.Board) -> list[chess.Move]:
    return [move for move in board.generate_legal_captures()]
def quiescenceEvaluation(board:chess.Board) -> int:
    staticScore = staticEvaluation(board)
    if board.is_game_over():
        return staticScore
    captureMoves = generateLegalCaptures(board)
    if len(captureMoves) == 0:
        return staticScore
    else:
        bestScore = staticScore
        for move in captureMoves:
            if StaticExchangeEvaluation(board, move.to_square) <= 0:
                continue
            newBoard = makeMove(board, move)
            score = quiescenceEvaluation(newBoard)
            if board.turn == chess.WHITE and score > bestScore or\
                board.turn == chess.BLACK and score < bestScore:
                bestScore = score
        return bestScore
        
def alphabeta(board:chess.Board, color:chess.Color, depth:int, alpha:float = -float('inf'), beta:float = float('inf')) :
    #Alpha Beta pruning algorithm for bruteforce search best move
    """
    alpha : Best value that maximizer can guarantee at that level or above
    beta : Best value that minimizer can guarantee at that level or above
    """
    FoundPV = False
    #game over
    if board.is_game_over():
        return (None, staticEvaluation(board))
    (simpleMove, simpleEval) = staticSearch(board, color)#get move
    #Base case if Winned move or at maximum depth
    if depth == 1 or \
       simpleEval == winScore(not color):
        return (simpleMove, simpleEval)
    bestMove = []
    for move in board.legal_moves:
        newBoard = makeMove(board, move)#Move in simulation board
        if FoundPV:
            moveAndScore = alphabeta(newBoard, not color, depth - 1, -alpha - 1, -alpha)
            (_, score) = moveAndScore[0], -moveAndScore[1]
            if alpha < score < beta :#check for failure
                moveAndScore = alphabeta(newBoard, not color, depth - 1, -beta, -alpha)
                (_, score) = moveAndScore[0], -moveAndScore[1]
        else:
            moveAndScore = alphabeta(newBoard, not color, depth - 1, -beta, -alpha)#get score of each move
            (_, score) = moveAndScore[0], -moveAndScore[1]
        if score >= beta:
            return (None, beta)
        if score > alpha:
            alpha = score
            bestMove = [move]
            FoundPV = True
    if bestMove:
        return (choice(bestMove), alpha)
    else:
        return (None, alpha)

def QuiescentSearch(board:chess.Board, color:chess.Color, alpha:float = -float("inf"), beta:float = float("inf")):
    if board.is_check():
        return alphabeta(board, 1, alpha, beta)
    (SimpleMove, SimpleEval) = staticSearch(board, color)
    if SimpleEval >= beta:
        return (SimpleMove, beta)
    if SimpleEval > alpha:
        alpha = SimpleEval
    captureMoves = [move for move in board.legal_moves if board.is_capture(move)]#Generate capture move
    if len(captureMoves) < 1:
        captureMoves = [move for move in board.legal_moves]
    print(captureMoves)
    bestMove = []
    for move in captureMoves:
        newBoard = makeMove(board, move)
        moveAndScore = QuiescentSearch(newBoard, not color, -beta, -alpha)
        (_, score) = moveAndScore[0], -moveAndScore[1]
        if score >= beta:
            return (None, beta)
        if score > alpha:
            alpha = score
            bestMove = [move]
    if bestMove:
        return (choice(bestMove), alpha )
    else:
        return (None, alpha)




        