package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Pawn = class('Pawn', Piece)
Pawn.numOfMoves = 0;
function Pawn:initialize(type,directionUp)
    Piece.initialize(self,type)
    self.directionUp = directionUp
    self.firstMove = true
end

function Pawn:isDirectionUp()
    return self.directionUp
end

function Pawn:setDirectionUp(directionUp)
    self.directionUp = directionUp
end

function Pawn:validMoves()
    moveList = {};
    --Direction it can move.
    if self.directionUp then
        if not self.firstMove then
            table.insert(moveList, {self.x,self.y+1})
        else
            table.insert(moveList, {self.x,self.y+2})
            self.firstMove = false
        end
    else
        if not self.firstMove then
            table.insert(moveList, {self.x,self.y-1})
        else
            table.insert(moveList, {self.x,self.y-2})
            self.firstMove = false
        end
    end
    --If opponient piece is there it can also attakck.
    if self.directionUp then
        table.insert(moveList, {self.x+1,self.y+1})
    else
        table.insert(moveList, {self.x-1,self.y-1})
    end
    return moveList;
end




