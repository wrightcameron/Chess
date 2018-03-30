package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Bishop = class('Bishop', Piece)
function Bishop:initialize(available, x, y)
    Piece.initialize(self,available,x,y)
end

function Piece:validMoves()
    moveList = {};
    --Direction it can move.
    if self.directionUp then
        if not self.firstMove then
            table.insert(moveList, {self.x,self.y+1})
        else
            table.insert(moveList, {self.x,self.y+2})
            self.firstMove = false
    else
        if not self.firstMove then
            table.insert(moveList, {self.x,self.y-1})
        else
            table.insert(moveList, {self.x,self.y-2})
            self.firstMove = false
    end
    --If opponient piece is there it can also attakck.
    if self.directionUp then
        table.insert(moveList, {self.x+1,self.y+1})
    else
        table.insert(moveList, {self.x-1,self.y-1})
    end
    return moveList;
end