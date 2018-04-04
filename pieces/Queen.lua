package.path = package.path .. ";./?.lua"
local class = require 'Piece'
package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Queen = class('Queen', Piece)
function Queen:initialize(type)
    Piece.initialize(self,type)
end

function Queen:validMoves(board)
    return nil
end