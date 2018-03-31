package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Queen = class('Queen', Piece)
function Queen:initialize( x, y)
    Piece.initialize(self,x,y)
end

function Queen:validMoves(board)
    return nil
end