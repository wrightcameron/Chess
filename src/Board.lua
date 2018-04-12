package.path = package.path .. ";./?.lua"
local squareClass = require 'Square'
package.path = package.path .. ";./pieces/?.lua"
local rookClass = require 'Rook'
local pawnClass = require 'Pawn'
local knightClass = require 'Knight'
local bishopClass = require 'Bishop'
local queenClass = require 'Queen'
local kingClass = require 'King'
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
  --TODO Might change the arguments in the Pieces
  self.whitePieces = {Pawn:new("white",true),Pawn:new("white",true),Pawn:new("white",true),Pawn:new("white",true),Pawn:new("white",true),Pawn:new("white",true),Pawn:new("white",true),Pawn:new("white",true),
                      Rook:new("white"),Rook:new("white"),
                      Knight:new("white"),Knight:new("white"),
                      Bishop:new("white"),Bishop:new("white"),
                      Queen:new("white"),
                      King:new("white")}
  self.blackPieces = {Pawn:new("black",false),Pawn:new("black",false),Pawn:new("black",false),Pawn:new("black",false),Pawn:new("black",false),Pawn:new("black",false),Pawn:new("black",false),Pawn:new("black",false),
                      Rook:new("black"),Rook:new("black"),
                      Knight:new("black"),Knight:new("black"),
                      Bishop:new("black"),Bishop:new("black"),
                      Queen:new("black"),
                      King:new("black")}
  -- ## Add pieces to the board ##
  --White pieces [x][y]
  self.squares[1][2]:occupySpot(self.whitePieces[1]) --Pawn
  self.squares[2][2]:occupySpot(self.whitePieces[2])
  self.squares[3][2]:occupySpot(self.whitePieces[3])
  self.squares[4][2]:occupySpot(self.whitePieces[4])
  self.squares[5][2]:occupySpot(self.whitePieces[5])
  self.squares[6][2]:occupySpot(self.whitePieces[6])
  self.squares[7][2]:occupySpot(self.whitePieces[7])
  self.squares[8][2]:occupySpot(self.whitePieces[8])
  self.squares[1][1]:occupySpot(self.whitePieces[9]) --Rook
  self.squares[8][1]:occupySpot(self.whitePieces[10]) --Rook
  self.squares[2][1]:occupySpot(self.whitePieces[11]) --Knight
  self.squares[7][1]:occupySpot(self.whitePieces[12]) --Knight
  self.squares[3][1]:occupySpot(self.whitePieces[13]) --Bishop
  self.squares[6][1]:occupySpot(self.whitePieces[14]) --Bishop
  self.squares[4][1]:occupySpot(self.whitePieces[15]) --Queen
  self.squares[5][1]:occupySpot(self.whitePieces[16]) --King
  --Black pieces
  self.squares[1][7]:occupySpot(self.blackPieces[1]) --Pawn
  self.squares[2][7]:occupySpot(self.blackPieces[2])
  self.squares[3][7]:occupySpot(self.blackPieces[3])
  self.squares[4][7]:occupySpot(self.blackPieces[4])
  self.squares[5][7]:occupySpot(self.blackPieces[5])
  self.squares[6][7]:occupySpot(self.blackPieces[6])
  self.squares[7][7]:occupySpot(self.blackPieces[7])
  self.squares[8][7]:occupySpot(self.blackPieces[8])
  self.squares[1][8]:occupySpot(self.blackPieces[9]) --Rook
  self.squares[8][8]:occupySpot(self.blackPieces[10]) --Rook
  self.squares[2][8]:occupySpot(self.blackPieces[11]) --Knight
  self.squares[7][8]:occupySpot(self.blackPieces[12]) --Knight
  self.squares[3][8]:occupySpot(self.blackPieces[13]) --Bishop
  self.squares[6][8]:occupySpot(self.blackPieces[14]) --Bishop
  self.squares[4][8]:occupySpot(self.blackPieces[15]) --Queen
  self.squares[5][8]:occupySpot(self.blackPieces[16]) --King
end

--Move Piece
function Board:movePiece(piece, newX, newY)
  squareOld = self.squares[piece:getX()][piece:getY()]
  squareOld:releaseSpot()
  newSquare = self.squares[newX][newY]
  newSquare:occupySpot(piece)
end

--Check if Square exists 
function Board:validMove(X, Y)
  --Check if bounds are outside of array
  if(X <= 0 or Y <= 0) or (X >= 9 or Y >= 9) then
    return false
  end
  square = self.squares[X][Y]
  if square ~= nil then
    return true
  end
  return false
end

--Get piece at Sqaure
function Board:getPieceAtsquare(X, Y)
  square = self.squares[X][Y]
  if square:isOccupied() then
    return square:getPiece()
  end
  return nil
end

--Return all white pieces
function Board:getWhitePieces()
  return self.whitePieces
end

--return all black pieces
function Board:getBlackPieces()
  return self.blackPieces
end

function Board:getAllPieces()
  return nil
end

function Board:printBoard()
  io.write("   ")
  for i=8,1,-1 do
    io.write(i)
    io.write(" ")
  end
  io.write("\n")
  io.write(" + ---------------")
  io.write("\n")
  for y=8, 1,-1 do
    io.write(y)
    io.write("|")
    io.write(" ")
    for x=8,1,-1 do
        piece = self:getPieceAtsquare(x, y)
        if piece ~= nil then
          if string.match(piece:__tostring(), "Pawn") then
            if string.match(piece:getType(),"white") then
              io.write("P") 
            else
              io.write("p")
            end
           elseif string.match(piece:__tostring(), "Rook") then
            if string.match(piece:getType(),"white") then
              io.write("R") 
            else
              io.write("r")
            end
          elseif string.match(piece:__tostring(), "Knight") then
            if string.match(piece:getType(),"white") then
              io.write("K") 
            else
              io.write("k")
            end
          elseif string.match(piece:__tostring(), "Bishop") then
            if string.match(piece:getType(),"white") then
              io.write("B") 
            else
              io.write("b")
            end
          elseif string.match(piece:__tostring(), "Queen") then
            if string.match(piece:getType(),"white") then
              io.write("Q") 
            else
              io.write("q")
            end
          elseif string.match(piece:__tostring(), "King") then
            if string.match(piece:getType(),"white") then
              io.write("#") 
            else
              io.write("$")
            end
          else
            io.write("?")
          end
        else
          io.write("*")
        end
        io.write(" ")
      end
      io.write("\n")
  end
  io.write("\n")
end
  