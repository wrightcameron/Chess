package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Piece = class('Piece')
function Piece:initialize(type)
  self.available = true
  self.x = 0
  self.y = 0
  self.type = type
end

function Piece:getType()
  return self.type
end

function Piece:setType(type)
  self.type = type
end

function Piece:isAvailable()
  return self.available
end

function Piece:setAvailable(available)
  self.available = available
end

function Piece:getX()
  return self.x
end

function Piece:setX(x)
  self.x = x
end

function Piece:getY()
  return self.y
end

function Piece:setY(y)
  self.y = y
end

function Piece:validMoves(Board)
  return nil
end

function Piece:move(x, y)
  self:setX(x)
  self:setY(y)
end

function Piece:toString()
  return nil
end

function Piece:sameType(piece)
  if(piece == nil) then
    return false
  end
  if(self.type == piece.type) then
    return true
  else
    return false
  end
end