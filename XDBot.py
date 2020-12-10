import chess
import chess.syzygy
import chess.polyglot
from POVScore import *
from copy import deepcopy
from random import choice
import sys
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
        #move = alphabeta(self.playedBoard, self.Color, depth)[0]
        #move = quiesenceSearch(self.playedBoard)[0]
        move = iterativeDeepeningAlphaBeta(self.playedBoard, depth , -sys.maxsize, sys.maxsize)[0]
        return move
def makeMove(board:chess.Board, move:chess.Move) -> chess.Board:
    #newBoard = deepcopy(board)
    #newBoard.push(move)
    board.push(move)
    return board
def unMakeMove(board:chess.Board) -> chess.Board:
    #newBoard = deepcopy(board)
    #newBoard.pop()
    board.pop()
    return board
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
        if board.piece_type_at(chess.square(file, rank)) == chess.PAWN:
            return False
    return True
def isSemiOpenFile(board:chess.Board, file:int) -> bool:
    count = 0
    for rank in range(8):
        if board.piece_type_at(chess.square(file, rank)) == chess.PAWN:
            if count < 1:
                count += 1
            else:
                return False
    return True
           
def isEndGame(board:chess.Board):
    return len(board.piece_map()) <= ENDGAME_PIECE_COUNT
def positionalBonus(board:chess.Board, color:chess.Color):
    #return choice([50, 60, -25, 90, 15, -60])
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
        return 10 * PIECE_VALUES[chess.KING]
    else:
        return -10 * PIECE_VALUES[chess.KING]
def evalEndNode(board:chess.Board):
    if board.is_checkmate():
        return winScore(not board.turn)
    elif board.is_stalemate() or \
         board.is_insufficient_material() or \
         board.is_seventyfive_moves():
         return 0
def staticEvaluation(board:chess.Board) -> int:
    if board.is_game_over():
        return evalEndNode(board)
    return materialBalance(board) + positionalBalance(board)
def staticSearch(board:chess.Board) -> tuple[chess.Move, int]:
    bestScore = -sys.maxsize if board.turn == chess.WHITE else sys.maxsize
    legal_moves = board.legal_moves
    bestMove = None
    for move in legal_moves:
        #newBoard = makeMove(board, move)
        makeMove(board, move)
        score = staticEvaluation(board)
        unMakeMove(board)
        if score == winScore(board.turn):
            return (move, score)
        if board.turn == chess.WHITE and score > bestScore or\
            board.turn == chess.BLACK and score < bestScore:
            bestScore = score
            bestMove = move
    return (bestMove, bestScore)
def generateLegalCaptures(board:chess.Board) -> list[chess.Move]:#Slow function!!!
    return [move for move in board.generate_legal_captures()]
def getCaptureSequences(cap_moves:list[chess.Move], board:chess.Board, targetedSquare:chess.Square) -> int:
    targetedCaptures:list[chess.Move] = []
    #allCaptures = generateLegalCaptures(board)
    allCaptures = board.generate_legal_captures()
    for capture_move in allCaptures:
        if capture_move.to_square == targetedSquare:
            targetedCaptures.append(capture_move)
    for i in range(len(targetedCaptures)):
        swapped = False
        piece_value = PIECE_VALUES[board.piece_type_at(targetedCaptures[i].from_square)]
        for j in range(i):
            sorted_piece_value = PIECE_VALUES[board.piece_type_at(cap_moves[j].from_square)]
            if piece_value < sorted_piece_value:
                swapped = True
                cap_moves.insert(j, targetedCaptures[i])
                break
        if not swapped:
            cap_moves.insert(i, targetedCaptures[i])
    return  len(targetedCaptures)
def StaticExchangeEvaluation(board:chess.Board, targetedSquare:chess.Square) -> int:
    #return choice([0, 0, 50, 60 , 80, -90, -60, 65, -50, 0 ,0 , 0, 0 ,0 ,0 ,0 ,0,0,0,0]+[0]*500)
    captureMoves = []
    attackCount = getCaptureSequences(captureMoves, board, targetedSquare)
    value = 0
    if attackCount > 0:
        makeMove(board, captureMoves[0])
        piece_value = PIECE_VALUES[board.piece_type_at(targetedSquare)]
        value = piece_value - StaticExchangeEvaluation(board, targetedSquare)
        unMakeMove(board)
    return value if value > 0 else 0
def quiescenceEvaluation(board:chess.Board) -> int:
    staticScore = staticEvaluation(board)
    if board.is_game_over():
        return staticScore
    #captureMoves = generateLegalCaptures(board)
    captureMoves = board.generate_legal_captures()
    if len(list(captureMoves)) == 0:
        return staticScore
    else:
        bestScore = staticScore
        for move in captureMoves:
            if StaticExchangeEvaluation(board, move.to_square) <= 0:
                continue
            makeMove(board, move)
            score = quiescenceEvaluation(board)
            unMakeMove(board)
            if board.turn == chess.WHITE and score > bestScore or\
                board.turn == chess.BLACK and score < bestScore:
                bestScore = score
        return bestScore
def quiesenceSearch(board:chess.Board) -> tuple[chess.Move, int]:
    bestScore = -sys.maxsize if board.turn == chess.WHITE else sys.maxsize
    bestMove = None
    legalMove = board.legal_moves
    for move in legalMove:
        makeMove(board, move)
        score = quiescenceEvaluation(board)
        unMakeMove(board)
        if score == winScore(board.turn):
            return (move, score)
        if board.turn == chess.WHITE and score > bestScore or\
            board.turn == chess.BLACK and score < bestScore:
            bestScore = score
            bestMove = move
    return (bestMove, bestScore)

def sortMove(moves:list[tuple[chess.Move, int]], color:chess.Color) -> list[tuple[chess.Move, int]]:
    return sorted(moves, key = lambda x: x[1], reverse = color == chess.BLACK)
def staticOrderedLegalMove(board:chess.Board, color:chess.Color):
    legal_moves = board.legal_moves
    #print(f"now {board.turn} turn moves: {legal_moves}")
    node:list[tuple[chess.Move, int]] = []
    for move in legal_moves:
        makeMove(board, move)
        node.append((move, staticEvaluation(board)))
        unMakeMove(board)
    orderedLegalMoves = [node[0] for node in sortMove(node, color)]
    return orderedLegalMoves
def alphaBetaNodes(board:chess.Board, depth:int) -> list[tuple[chess.Move, int]]:
    legal_moves = board.legal_moves
    nodes = []
    for move in legal_moves:
        makeMove(board, move)
        #print(f"Do {move} then Alpha beta at depth {depth}")
        nodes.append((move, alphaBeta(board, depth - 1, -sys.maxsize, sys.maxsize)[1] if depth > 1 else staticEvaluation(board)))
        unMakeMove(board)
    sortedNode = sortMove(nodes, board.turn)
    return sortedNode
def alphaBeta(board:chess.Board, depth:int, alpha:int, beta:int):
    if board.is_game_over():
        return (None, staticEvaluation(board))
    if depth == 1:
        return staticSearch(board)
    (static_move, static_score) = staticSearch(board)
    if static_score == winScore(board.turn):
        return (static_move, static_score)
    moveList = staticOrderedLegalMove(board,board.turn)
    bestMove = None
    for move in moveList:
        makeMove(board, move)
        (_, score) = alphaBeta(board, depth - 1, alpha, beta)
        unMakeMove(board)
        if score == winScore(board.turn):
            return (move, score)
        if board.turn == chess.WHITE and score > alpha :
            alpha = score
            bestMove = move
        elif board.turn == chess.BLACK and score <beta :
            beta = score
            bestMove = move
        if alpha > beta:
            break
    return (bestMove, alpha if board.turn == chess.WHITE else beta)
def iterativeDeepeningAlphaBeta(board:chess.Board, depth:int, alpha:int, beta:int) -> tuple[chess.Move, int]:
    if board.is_game_over():
        return (None, staticEvaluation(board))
    if depth == 1:
        return quiesenceSearch(board)
    (static_move, static_score) = staticSearch(board)
    if static_score == winScore(board.turn):
        return (static_move, static_score)
    moveNode = alphaBetaNodes(board, depth - 1)
    bestMove = None
    for move, move_score in moveNode: 
        makeMove(board, move)
        (_, score) = iterativeDeepeningAlphaBeta(board, depth - 1, alpha, beta)
        unMakeMove(board)
        if score == winScore(board.turn):
            return (move, score)
        if board.turn == chess.WHITE and score > alpha:
            alpha = score
            bestMove = move
        elif board.turn == chess.BLACK and score < beta:
            beta = score
            bestMove = move
        if alpha > beta:
            break
    return (bestMove, alpha if board.turn == chess.WHITE else beta)





        