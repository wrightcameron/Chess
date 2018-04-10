package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Bishop = class('Bishop', Piece)
function Bishop:initialize(type)
    Piece.initialize(self,type)
end

function Piece:validMoves(Board)
    moveList = {}
    for i=1,8 do

        --Up one to the diagonal right 
        if board:validMove(self.x + i, self.y + i) then
            table.insert(moveList, {self.x+i,self.y+i})
        end

        --Down one to the diagonal right
        if board:validMove(self.x + i, self.y - i) then
            table.insert(moveList, {self.x+i,self.y-i})
        end

        --down one to the diagonal left
        if board:validMove(self.x - i, self.y - i) then
            table.insert(moveList, {self.x-i,self.y-i})
        end
        
        --Up one to the diagonal left
        if board:validMove(self.x - i, self.y + i) then
            table.insert(moveList, {self.x-i,self.y+i})
        end
    end
    return moveList
end