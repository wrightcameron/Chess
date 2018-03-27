local Piece = {}
Piece.__index = Piece

setmetatable(Piece, {
  __call = function (cls, ...)
    return cls.new(...)
  end,
})

function Piece.new(init)
  local self = setmetatable({}, MyClass)
  self.isAvailable = init
  self.x = init
  self.y = init
  return self
end

function Piece:isAvailable()
  return self.isAvailable
end

function Piece:setAvailable(isAvailable)
  self.isAvailable = isAvailable
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

function Piece:move()
  return null
end