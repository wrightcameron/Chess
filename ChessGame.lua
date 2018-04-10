package.path = package.path .. ";./?.lua"
local class = require 'Board'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

function printBoard(board)
    board:printBoard()
end

function validMove()
    print("Enter an X coordinate")
    local x = tonumber(io.read())
    print("Enter a Y coordinate")
    local y = tonumber(io.read())
    if(board:validMove(x, y) == true) then
        print("Valid move!")
    else
        print("Invalid move!")
    end
end

function availableMoves()
 
end

function help()
    print("Type A for available moves,\nM to move piece,\nG to get pieces,\nP to print board,\nV to check if move is valid,\nH for help.")
end

function isKingCheckMated()
    return false
end

--The driver of the chess game, run this.
print("Ready to play a game of chess?")
board = Board:new()

isGameFinised = true
isWhitePlayer = true

board:printBoard()
validMove()
help()
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
    elseif(name == 'P' or name == 'p') then
        printBoard()
    elseif(name == 'V' or name == 'v') then
        validMove()
    elseif(name == 'A' or name == 'a') then
        availableMoves()
    elseif(name == 'M' or name == 'm') then

    elseif(nam == 'G' or name == 'g') then 

    else
        print("Invalid character input. Please enter character again.")
    end

    if isKingCheckMated() then
        isGameFinised = true
    end
end