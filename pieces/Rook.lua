package.path = package.path .. ";./?.lua"
local pieceClass = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Rook = class('Rook', Piece)
function Rook:initialize(type)
    Piece.initialize(self,type)
end

function Rook:validMoves(board)
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
        return moveList;
    end
    return moveList
end