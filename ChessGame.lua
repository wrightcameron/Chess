package.path = package.path .. ";./?.lua"
local class = require 'Board'
package.path = package.path .. ";./dependencies/?.lua"
local class = require 'middleclass'

--The driver of the chess game, run this.
print("Ready to play a game of chess?")
board = Board:new()
board:printBoard()