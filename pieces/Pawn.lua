package.path = package.path .. ";../dependencies/?.lua"
local class = require 'middleclass'

Pawn = class('Pawn', Piece)

Pawn.numOfMoves = 0;


function Pawn: initalize(init,)

function Pawn: move()
    if (numOfMoves > 0) then
        print('Move up two')
        Piece.setX(getX() + 2)
    end





