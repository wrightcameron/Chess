package.path = package.path .. ";./?.lua"
local class = require 'Board'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

--Print the board
function printBoard(board)
    board:printBoard()
end

--Move piece to new square.
function movePiece()
    print("Type in x cordinate:")
    local x = tonumber(io.read())
    print("Type in y cordinate:")
    local y = tonumber(io.read())
    local piece = board:getPieceAtsquare(x,y)
    print("Type in new x cordinate:")
    local x = tonumber(io.read())
    print("Type in new y cordinate:")
    local y = tonumber(io.read())
    if(board:validMove(x, y) == true) then
        piece:move(x, y)
    else
        print("Invalid move!")
    end
    

end 
function getPiece()
    print("Type in x cordinate:")
    local x = io.read("*number")
    print("Type in y cordinate:")
    local y = io.read("*number")
    local piece = board:getPieceAtsquare(x,y)
end 

function validMoves()
    print("Enter an X coordinate")
    local x = tonumber(io.read())
    print("Enter a Y coordinate")
    local y = tonumber(io.read())
    if(board:validMove(x, y) == true) then
        print("Valid move!")
        piece = board:getPieceAtsquare(x,y)
        if(piece ~= nil) then
            validMoves = piece:validMoves(board)
            for k,v in pairs(validMoves) do
                io.write("[")
                io.write(v[1])
                io.write(",")
                io.write(v[2])
                io.write("]\n")   
            end
        else
            print("No piece at given coordinates")
        end
    else
        print("Invalid move!")
    end
end

function help()
    print("Type \nA for available moves,\nM to move piece,\nG to get pieces,\nP to print board,\nV to check if move is valid,\nH for help,\nQ to quit.")
end

function quit(isGameFinised)
    print("Quiting game, thanks for playing.")
    isGameFinised = true
    return isGameFinised
end

function isKingCheckMated()
    return false
end

--The driver of the chess game, run this.
print("Ready to play a game of chess?")
board = Board:new()

isGameFinised = false
isWhitePlayer = true

help()
board:printBoard()
while isGameFinised ~= true do
    --Tell players who is going
    if isWhitePlayer == true then
        print("Player white's turn.")
    else
        print("PLayer black's turn.")
    end

    local name = io.read()
    print(" ")

    if(name == 'H' or name == 'h') then 
        help()
    elseif(name == 'Q' or name == 'q') then
        isGameFinised = quit(isGameFinised)
    elseif(name == 'P' or name == 'p') then
        board:printBoard()
    elseif(name == 'V' or name == 'v') then
        validMoves()
    elseif(name == 'M' or name == 'm') then
        movePiece()
        if isWhitePlayer == true then
            isWhitePlayer = false
        else
            isWhitePlayer = true
        end
    elseif(nam == 'G' or name == 'g') then 
        getPiece()
    else
        print("Invalid character input. Please enter character again.")
    end
    print("==================================")

    print()
    if isKingCheckMated() then
        isGameFinised = true
    end
end