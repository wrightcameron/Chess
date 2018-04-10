package.path = package.path .. ";./?.lua"
local class = require 'Board'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

--The driver of the chess game, run this.
print("Ready to play a game of chess?")
board = Board:new()



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

    print("What would you like to do? Type A for available moves, M to move piece, G to get pieces, P to print board, V to check if move is valid and H for help.")
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

    elseif(name == 'P' or name == 'p') then
        printBoard()
    end

    elseif(name == 'V' or name == 'v') 
        
        validMove()
    end

    elseif(name == 'A' or name == 'a') then

        availableMoves()
    end

    elseif(name == 'M' or name == 'm') then

    end

    elseif(nam == 'G' or name == 'g') then 

    end

    else
        print("Invalid character input. Please enter character again.")
    end





end

function printBoard(board)
    board:printBoard()
end

function validMove()
    print("Enter an X coordinate")
    local x = io.read()
    print("Enter a Y coordinate")
    local y = io.read()

    if(board:validMove(x, y) == true) then
        print("Valid move!")
    end
    else
        print("Invalid move!")
    end
end

function availableMoves()
 
end

function help()
    print("Type A for available moves, M to move piece, G to get pieces, P to print board, V to check if move is valid and H for help.")
end

function isKingCheckMated()
    return false
end