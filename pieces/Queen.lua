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

    local i = 1;

    for i, 8, 1 do
        if board:validMove(self.x, self.y + i) then
            table.insert(moveList, {self.x,self.y+i})
        end
    
        if board:validMove(self.x, self.y - i) then
            table.insert(moveList, {self.x,self.y-i})
         end
    
        if board:validMove(self.x + i, self.y) then
            table.insert(moveList, {self.x+i,self.y})
        end
    
        if board:validMove(self.x - i, self.y) then
            table.insert(moveList, {self.x - i,self.y})
        end
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
    

    return moveList


end