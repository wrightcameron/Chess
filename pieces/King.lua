package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../?.lua"
local class = require 'Board'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

King = class('King', Piece)
function King:initialize( x, y)
    Piece.initialize(self,x,y)
end

function King:validMoves(board)
    moveList = {};
    --Left Up
    if board:validMove(self.x-1,self.y+1) then
        table.insert(moveList, {self.x-1,self.y+1})
    end
    --Up
    if board:validMove(self.x,self.y+1) then
        table.insert(moveList, {self.x,self.y+1})
    end
    --Right up
    if board:validMove(self.x+1,self.y+1) then
        table.insert(moveList, {self.x+1,self.y+1})
    end
    --Left
    if board:validMove(self.x-1,self.y) then
        table.insert(moveList, {self.x-1,self.y})
    end
    --Right
    if board:validMove(self.x+1,self.y) then
        table.insert(moveList, {self.x+1,self.y})
    end
    --Left Down
    if board:validMove(self.x-1,self.y-1) then
        table.insert(moveList, {self.x-1,self.y-1})
    end
    --Down
    if board:validMove(self.x,self.y-1) then
        table.insert(moveList, {self.x,self.y-1})
    end
    --Right Down
    if board:validMove(self.x+1,self.y-1) then
        table.insert(moveList, {self.x+1,self.y-1})
    end
    return moveList;
end