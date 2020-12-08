import chess
DOUBLED_PAWN_PENALTY      = 10
ISOLATED_PAWN_PENALTY     = 20
BACKWARDS_PAWN_PENALTY    = 8
PASSED_PAWN_BONUS         = 20
ROOK_SEMI_OPEN_FILE_BONUS = 10
ROOK_OPEN_FILE_BONUS      = 15
ROOK_ON_SEVENTH_BONUS     = 20

PAWN_BONUS = [0,   0,   0,   0,   0,   0,   0,   0,
              0,   0,   0, -40, -40,   0,   0,   0,
              1,   2,   3, -10, -10,   3,   2,   1,
              2,   4,   6,   8,   8,   6,   4,   2,
              3,   6,   9,  12,  12,   9,   6,   3,
              4,   8,  12,  16,  16,  12,   8,   4,
              5,  10,  15,  20,  20,  15,  10,   5,
              0,   0,   0,   0,   0,   0,   0,   0]

KNIGHT_BONUS = [-10, -30, -10, -10, -10, -10, -30, -10,
                -10,   0,   0,   0,   0,   0,   0, -10,
                -10,   0,   5,   5,   5,   5,   0, -10,
                -10,   0,   5,  10,  10,   5,   0, -10,
                -10,   0,   5,  10,  10,   5,   0, -10,
                -10,   0,   5,   5,   5,   5,   0, -10,
                -10,   0,   0,   0,   0,   0,   0, -10,
                -10, -10, -10, -10, -10, -10, -10, -10]

BISHOP_BONUS = [-10, -10, -20, -10, -10, -20, -10, -10,
                -10,   0,   0,   0,   0,   0,   0, -10,
                -10,   0,   5,   5,   5,   5,   0, -10,
                -10,   0,   5,  10,  10,   5,   0, -10,
                -10,   0,   5,  10,  10,   5,   0, -10,
                -10,   0,   5,   5,   5,   5,   0, -10,
                -10,   0,   0,   0,   0,   0,   0, -10,
                -10, -10, -10, -10, -10, -10, -10, -10]

KING_BONUS = [  0,  20,  40, -20,   0, -20,  40,  20,
              -20, -20, -20, -20, -20, -20, -20, -20,
              -40, -40, -40, -40, -40, -40, -40, -40,
              -40, -40, -40, -40, -40, -40, -40, -40,
              -40, -40, -40, -40, -40, -40, -40, -40,
              -40, -40, -40, -40, -40, -40, -40, -40,
              -40, -40, -40, -40, -40, -40, -40, -40,
              -40, -40, -40, -40, -40, -40, -40, -40]

KING_ENDGAME_BONUS = [ 0,  10,  20,  30,  30,  20,  10,   0,
                      10,  20,  30,  40,  40,  30,  20,  10,
                      20,  30,  40,  50,  50,  40,  30,  20,
                      30,  40,  50,  60,  60,  50,  40,  30,
                      30,  40,  50,  60,  60,  50,  40,  30,
                      20,  30,  40,  50,  50,  40,  30,  20,
                      10,  20,  30,  40,  40,  30,  20,  10,
                       0,  10,  20,  30,  30,  20,  10,   0]


PIECE_VALUES = {None:0, 
                chess.PAWN:100, 
                chess.KNIGHT:300, 
                chess.BISHOP:300, 
                chess.ROOK:500, 
                chess.QUEEN:900, 
                chess.KING:42000 }
ENDGAME_PIECE_COUNT = 7