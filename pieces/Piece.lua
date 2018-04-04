package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Piece = class('Piece')
function Piece:initialize(type)
  self.available = true
  self.x = 0
<<<<<<< HEAD
  self.y = 0s
=======
  self.y = 0
  self.type = type
end

function Piece:getType()
  return self.type
end

function Piece:setType(type)
  self.type = type
>>>>>>> 1d8327a7e4428aa484a948f978e6049dc7c39ff0
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
  self.setX(x)
  self.setY(y)
end

function Piece:toString()
  return nil
end