package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

Square = class('Square')
function Square:initialize(x, y)
  self.x = x
  self.y = y
  self.piece = nil
end

function Square:occupySpot(piece)
    if self.piece ~= nil then
        self.piece.setAvailable(false)
    else 
        self.piece = piece
        self.piece:setX(self.x)
        self.piece:setY(self.y)
    end
end

function Square:isOccupied()
    if self.piece ~= nil then
        return true
    else
        return false
    end
end

function Square:releaseSpot()
    releasedPiece = self.piece
    self.piece = nil
    return releasedPiece
end

function Square:getPiece()
    return self.piece
end