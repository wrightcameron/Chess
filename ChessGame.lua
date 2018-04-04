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
    --Open scanner and ask player what they want to do.
        --Avaible moves
        --Move piece
        --Get pieces
        --print board
        --help (prints commands.)


end

function printBoard(board)
    board:printBoard()
end

function isKingCheckMated()
    return false
end