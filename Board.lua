package.path = package.path .. ";./?.lua"
local class = require 'Square'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

Board = class('Board')
function Board:initialize()
  --Set the squares of the board.
  self.squares = {}
  for x=1, 8 do
    self.squares[x] = {}
    for y=1,8 do
      self.squares[x][y] = Square:new(x, y)
    end
  end
  --Define white and black piecies
  self.whitePieces = {Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),
                      Rook:new(),Rook:new(),
                      Knight:new(),Knight(),
                      Bishop:new(),Bishop(),
                      Queen:new(),
                      King:new()}
  self.blackPieces = {Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),
                      Rook:new(),Rook:new(),
                      Knight:new(),Knight(),
                      Bishop:new(),Bishop(),
                      Queen:new(),
                      King:new()}
  --Add pieces to the board.
end
