local Board = {}
Board.__index = Board

setmetatable(Board, {
  __call = function (cls, ...)
    return cls.new(...)
  end,
})

function Board.new(init)
  local self = setmetatable({}, MyClass)
  return self
end