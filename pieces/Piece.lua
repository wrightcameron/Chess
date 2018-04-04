package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Piece = class('Piece')
function Piece:initialize()
  self.available = true
  self.x = 0
  self.y = 0s
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