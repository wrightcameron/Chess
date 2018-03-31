package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Bishop = class('Bishop', Piece)
function Bishop:initialize( x, y)
    Piece.initialize(self,x,y)
end

function Piece:validMoves(Board)
    moveList = {};
    --Direction it can move.
    return moveList;
end