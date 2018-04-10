package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Knight = class('Knight', Piece)
function Knight:initialize(type)
    Piece.initialize(self,type)
end

function Knight:validMoves(Board)
   moveList = {}

   if board:validMove(self.x + 1, self.y + 2) then
    table.insert(moveList, {self.x+1,self.y+2})
   end

   if board:validMove(self.x + 1, self.y - 2) then
    table.insert(moveList, {self.x + 1, self.y - 2})
   end

   if board:validMove(self.x - 1, self.y + 2) then
    table.insert(moveList, {self.x - 1, self.y + 2})
   end

   if board:validMove(self.x - 1, self.y - 2) then
    table.insert(moveList, {self.x - 1, self.y - 2})
   end

    if board:validMove(self.x + 2, self.y + 1) then
        table.insert(moveList, {self.x + 2, self.y + 1})
    end

    if board:validMove(self.x + 2, self.y -1) then
        table.insert(moveList, {self.x + 2, self.y - 1})
    end

    if board:validMove(self.x - 2, self.y + 1) then
        table.insert(moveList, {self.x - 2, self.y + 1})
    end
    if board:validMove(self.x - 2, self.y - 1) then
        table.insert(moveList, {self.x - 2, self.y - 1})
    end
    return moveList 
end


