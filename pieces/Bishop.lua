package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Bishop = class('Bishop', Piece)
function Bishop:initialize(type)
    Piece.initialize(self,type)
end

function Piece:validMoves(Board)
    moveList = {};
    --Direction it can move.
    return moveList;
end