package.path = package.path .. ";./?.lua"
local class = require 'Square'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

Board = class('Board')
function Board:initialize()
  self.squares = {}
  for x=1, 8 do
    self.squares[x] = {}
    for y=1,8 do
      self.squares[x][y] = Square:new(x, y)
    end
  end
end

local board = Board:new() 