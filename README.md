# Chess in Lua

* Author: Cameron Wright, Spencer Saunders, Madeline Ross
* Class: CS354 [Programming Languages]
* Spring Semester Year 2018

## Overview
Command line implementation of Chess using the interpreter language Lua

## Manifest

|Filename       | Description
|---------------|-------------------------------------------------------------------|
|README.md      |This file                                                          |
|---------------|-------------------------------------------------------------------|
|ChessGame.lua  |Chess Game implementation                                          |
|---------------|-------------------------------------------------------------------|
|Board.lua      |Board implementation                                               |
|---------------|-------------------------------------------------------------------|
|Square.lua     |Square implementation                                              |
|---------------|-------------------------------------------------------------------|
|Bishop.lua     |Bishop implementation                                              |                     
|---------------|-------------------------------------------------------------------|
|King.lua       |King implementation                                                |
|---------------|-------------------------------------------------------------------|
|knight.lua     |Knight implementation                                              |
|---------------|-------------------------------------------------------------------|
|Pawn.lua       |Pawn implementation                                                |                                 
|---------------|-------------------------------------------------------------------|
|Queen.lua      |Queen implementation                                               |        
|---------------|-------------------------------------------------------------------|
|Rook.lua       |Rook implementation                                                |
|---------------|-------------------------------------------------------------------|
|test.lua       |testing program                                                    |
|---------------|-------------------------------------------------------------------|

## Program Design 
For the group's Lua implementation of Chess, a Board object is created in the ChessGame class. The Board object call's the function initialize which creates a 2D table, reserves positions for all the pieces, and occupies the reserved positions with piece objects. All of the individual pieces are created using OOP and inheritance from the parent class Piece. The Board object is printed out to the console and the user is prompted to enter a specific character based off of the printed options in order to advance the game. The player can choose to print the board, check if a move is valid, check available moves, make a move, or get the pieces on the board. The game will keep alternating between players until the function isKingCheckMated equates to true. 

## Features and usage
From the directory containing the .lua source code, compile the program and run the program:
> lua ChessGame.lua

User Commands: 
A for available moves
M to move piece 
G to get pieces
P to print board 
V to check if move is valid 
H for help

Board Setup:

   1 2 3 4 5 6 7 8
 + ---------------
8| r k b $ q b k r
7| p p p p p p p p
6| * * * * * * * *
5| * * * * * * * *
4| * * * * * * * *
3| * * * * * * * *
2| P P P P P P P P
1| R K B # Q B K R

p/P Pawn
r/R Rook
k/K Knight
b/B Bishop
q/Q Queen
$/# King 
*   Open Space 

## Testing

### Known Bugs

## Discussion
Choosing Lua to implement Chess turned out to be a harder-than-expected effort given the misleading marketing that claimed Lua supported full-fledged OOP. Without this support, the third-party library middleclass was the backbone of the Chess implementation. Throughout the workload of the project, the good-sized amount of documentation and tutorials the Lua development team put out helped navigate the group through the project. Lua certainly has its niche appeals primarily has a scripting language for popular video games like Roblox, but the group didn't see themselves using Lua again in the foreseeable future. 
