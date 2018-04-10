package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Knight = class('Knight', Piece)
function Knight:initialize(type)
    Piece.initialize(self,type)
end

--all knight moves L shaped
function Knight:validMoves(Board)
   moveList = {}

   --Move two spots up and move one spot to the right
   if board:validMove(self.x + 1, self.y + 2) then
    table.insert(moveList, {self.x+1,self.y+2})
   end

   --move two spots down and move one spot to the right
   if board:validMove(self.x + 1, self.y - 2) then
    table.insert(moveList, {self.x + 1, self.y - 2})
   end
   --move two spots up and move one spot to the left
   if board:validMove(self.x - 1, self.y + 2) then
    table.insert(moveList, {self.x - 1, self.y + 2})
   end

   --move two spots down and move one to the left
   if board:validMove(self.x - 1, self.y - 2) then
    table.insert(moveList, {self.x - 1, self.y - 2})
   end

   --move one spot up and move two to the right
    if board:validMove(self.x + 2, self.y + 1) then
        table.insert(moveList, {self.x + 2, self.y + 1})
    end

    --move one spot down and two to the right
    if board:validMove(self.x + 2, self.y -1) then
        table.insert(moveList, {self.x + 2, self.y - 1})
    end

    --move one spot up and two to the left
    if board:validMove(self.x - 2, self.y + 1) then
        table.insert(moveList, {self.x - 2, self.y + 1})
    end

    --move one spot down and two spots to the left
    if board:validMove(self.x - 2, self.y - 1) then
        table.insert(moveList, {self.x - 2, self.y - 1})
    end
    return moveList 
end


