package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Piece = class('Piece')
function Piece:initialize(available, x, y)
  self.available = available
  self.x = x
  self.y = y
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

function Piece:validMoves()
  return nil
end

function Piece:move(x, y)
  self.setX(x)
  self.setY(y)
end
