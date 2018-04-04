package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Rook = class('Rook', Piece)
function Rook:initialize(type)
    Piece.initialize(self,type)
end

function Rook:validMoves(board)
    moveList = {}

    if self.directionUp then 
        
        local vertical = io.read()

        if board:validMove(self.x, self.y + self.vertical) then
            table.insert(moveList, {self.x,self.y + self.vertical})
        end
    end

    if self.directionDown then
        local vertical = io.read()

        if board:validMove(self.x, self.y - self.vertical) then
            table.insert(moveList, {self.x,self.y-self.vertical})
        end
    end

    if self.directionLeft then
        local horizontal = io.read()

        if board:validMove(self.x - self.horizontal, self.y) then
            table.insert(moveList, {self.x-self.horizontal,self.y})
        end
    end

    if self.directionRight then
        local horizontal = io.read()

        if board:validMove(self.x + self.horizontal, self.y) then 
            table.insert(moveList, {self.x + self.horizontal,self.y})
        end
    end

    return moveList
end



end