package.path = package.path .. ";./?.lua"
local class = require 'Board'

local board = Board:new()

--Get Pawn and move it
pawn = board:getPieceAtsquare(1,2)
--Piece methods
print(pawn:isAvailable())
print(pawn:getX())
print(pawn:getY())
--Pawn implemented methods
print(pawn:isDirectionUp())
for var in pawn:validMoves() do
    print(var)
end

--Test if all Squares are initilized and valid
function checkIfSquaresValid()
    allSpotsValid = true;
for x=1, 8 do
    for y=1,8 do
        if board:validMove(x,y) == false then
            allSpotsValid = false
        end
    end
  end
print("All squares valid",allSpotsValid)
end

--Get the piece at every location.
function printAllPieces()
    for x=1, 8 do
        for y=1,8 do
            piece = board:getPieceAtsquare(x, y)
            if piece ~= nil then
                print(piece,x,y,piece:isAvailable())
            else
                print("Space empty",x,y)
            end
        end
    end
end
