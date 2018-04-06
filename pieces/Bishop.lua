package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Bishop = class('Bishop', Piece)
function Bishop:initialize(type)
    Piece.initialize(self,type)
end

function Piece:validMoves(Board)
    moveList = {};

    local i = 1

    for i, 8, 1 do

        if board:validMove(self.x + i, self.y + i) then
            table.insert(moveList, {self.x+i,self.y+i})
        end
        if board:validMove(self.x + i, self.y - i) then
            table.insert(moveList, {self.x+i,self.y-i})
        end
        if board:validMove(self.x - i, self.y - i) then
            table.insert(moveList, {self.x-i,self.y-i})
        end
        
        if board:validMove(self.x - i, self.y + i) then
            table.insert(moveList, {self.x-i,self.y+i})
        end
    end
end

    return moveList;
end