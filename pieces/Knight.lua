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

end

--[[
function Knight:move(direction)
    if(direction == "upLeft" && (x > 1 && y >= 1)) then
        setX(self.x -1)
        setY(self.y +2)
    elseif(direction == 'upRight' (x > 1 && y >= 1)) then
        setX(self.x + 1)
        setY(self.y + 2)
    elseif(direction == 'leftUp' (x > 1 && y >= 1)) then
        setX(self.x -2)
        setY(self.y + 1)
    elseif(direction == 'leftDown' (x > 1 && y >= 1)) then
        setX(self.x - 2)
        setY(self.y -1)
    elseif(direction == 'rightUp' (x > 1 && y >= 1)) then
        setX(self.x + 2)
        setY(self.y + 1)
    elseif(direction == 'rightDown' (x > 1 && y >= 1)) then
        setX(self.x + 2)
        setY(self.y -1)
    elseif(direction == 'downLeft' (x > 1 && y >= 1)) then
        setX(self.x -1)
        setY(self.y -2)
    elseif(direction == 'downRight' (x > 1 && y >= 1)) then
        setX(self.x + 1)
        setY(self.y -2)
    end
end
]]



