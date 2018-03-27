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
  return nil
end

-- ## Testing ##
local p1 = Piece:new(true,45,45)
p1:setX(12)
print(p1:getX())
p1:setY(24)
print(p1:getY())
p1:setAvailable(false)
value = p1:isAvailable()
if  value == true
  then print("TRUE") 
  else print("FALSE") 
end
