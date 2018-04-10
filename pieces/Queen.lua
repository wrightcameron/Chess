package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Queen = class('Queen', Piece)
function Queen:initialize(type)
    Piece.initialize(self,type)
end

function Queen:validMoves(board)
    
    moveList = {}
    for i=1,8 do
        --move up one
        if board:validMove(self.x, self.y + i) then
            table.insert(moveList, {self.x,self.y+i})
        end
        --move down one
        if board:validMove(self.x, self.y - i) then
            table.insert(moveList, {self.x,self.y-i})
         end
         --move right one
        if board:validMove(self.x + i, self.y) then
            table.insert(moveList, {self.x+i,self.y})
        end
        --move left one
        if board:validMove(self.x - i, self.y) then
            table.insert(moveList, {self.x - i,self.y})
        end
        --move up one, move right one
        if board:validMove(self.x + i, self.y + i) then
            table.insert(moveList, {self.x+i,self.y+i})
        end
        --move down one, move right one
        if board:validMove(self.x + i, self.y - i) then
            table.insert(moveList, {self.x+i,self.y-i})
        end
        --move down one, move left one
        if board:validMove(self.x - i, self.y - i) then
            table.insert(moveList, {self.x-i,self.y-i})
        end
        --move up one, move left one
        if board:validMove(self.x - i, self.y + i) then
            table.insert(moveList, {self.x-i,self.y+i})
        end
    end
    return moveList
end