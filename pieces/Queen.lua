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
   
    local i = 1
    local j = 1

    for i, 8, 1 do
        for j, 8, 1 do

            if table.validMove(i, j) then
                table.insert( moveList, {self.i, self.j})
            end
        end
    end

    i = 1
    j = 8
   

    for i, 8, 1 do
        for j, 1, -1 do

            if table.validMove(i, j) then
                table.insert( moveList, {self.i, self.j})
            end
        end
    end

    i = 1
    j = 1

    for j, 8, 1 do
        for i, 8, 1 do 

            if table.validMove(i, j) then
                table.insert( moveList, {self.i, self.j})
            end
        end
    end

    i = 8
    j = 1

    for j, 8, 1 do
        for i, 1, -1 do
            if table.validMove(i, j) then
                table.insert( moveList, {self.i, self.j})
            end
        end
    end
    

    return moveList


end