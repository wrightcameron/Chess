--[[

function inheritsFrom(Piece)
    if Piece then
        setmetatable(Pawn, {__index = baseClass})
    end

    return Pawn

end
--]]

local numMoves = 0;

Pawn = Piece:new{}

function: Pawn:move()
{
    if(numMoves == 0)
    {
        Pawn:setX() = Pawn:getX() + 2
    }
end
else
    Pawn:setX() = Pawn:getX() + 1
end
}
end


