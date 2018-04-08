package.path = package.path .. ";./?.lua"
local class = require 'Board'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

--The driver of the chess game, run this.
print("Ready to play a game of chess?")
board = Board:new()
rook = Rook:new()
bishop = Bishop:new()
knight = knight:new()
queen = queen:new()
king = king:new()
pawn = pawn:new()


isGameFinised = true
isWhitePlayer = true

board:printBoard()
while isGameFinised ~= true do 
    --Tell players who is going
    if isWhitePlayer == true then
        print("Player white's turn.")
    else
        print("PLayer black's turn.")
    end

    print("What would you like to do? Type A for available moves, M to move piece, G to get pieces, P to print board, and H for help. ")
    --Open scanner and ask player what they want to do.
        --Avaible moves
        --Move piece
        --Get pieces
        --print board
        --help (prints commands.)
    local name = io.read()

    if(name == 'H' or name == 'h') then 
        help()
    end

    if(name == 'P' or name == 'p') then
        printBoard()
    end

    if(name == 'A' or name == 'a') then

        validMoves()

    end

    if(name == 'M' or name == 'm') then

    end

    if(nam == 'G' or name == 'g') then 

    end






end

function printBoard(board)
    board:printBoard()
end

function validMoves()
    print(rook:validMoves())
    print(knight:validMoves())
    print(bishop:validMoves())
    print(king:validMoves())
    print(queen:validMoves())
    print(pawn:validMoves())
end

function help()
    print()

function isKingCheckMated()
    return false
end