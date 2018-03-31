package.path = package.path .. ";./?.lua"
local Square = require 'Square'
package.path = package.path .. ";./pieces/?.lua"
local Rook = require 'Rook'
local Pawn = require 'Pawn'
local Knight = require 'Knight'
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
  self.whitePieces = {Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),
                      Rook:new(),Rook:new(),
                      Knight:new(),Knight:new(),
                      Bishop:new(),Bishop:new(),
                      Queen:new(),
                      King:new()}
  self.blackPieces = {Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),Pawn:new(),
                      Rook:new(),Rook:new(),
                      Knight:new(),Knight:new(),
                      Bishop:new(),Bishop:new(),
                      Queen:new(),
                      King:new()}
  --Add pieces to the board.
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
function movePiece(piece, newX, newY)
  squareOld = self.squares[piece:getX()][piece:getY()]
  squareOld:releaseSpot()
  newSquare = self.squares[newX][newY]
  newSquare:occupySpot(piece)
end

--Check if Square exists 
function validMove(X,Y)
  square = self.squares[X][Y]
  if square ~= nil then
    return true
  end
  return false
end

--Get piece at Sqaure
function getPieceAtsquare(X, Y)
  square = self.squares[X][Y]
  if square:isOccupied() then
    return square:getPiece()
  end
  return nil
end

--Return all white pieces
function getWhitePieces()
  return self.whitePieces
end

--return all black pieces
function getBlackPieces()
  return self.blackPieces
end