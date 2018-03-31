package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Rook = class('Rook', Piece)
function Rook:initialize( x, y)
    Piece.initialize(self,x,y)
end

function Rook:validMoves(board)
    return nil
end