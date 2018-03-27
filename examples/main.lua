local Person = require 'Person'

local p1 = AgedPerson:new('Billy the Kid', 13) -- this is equivalent to AgedPerson('Billy the Kid', 13) - the :new part is implicit
local p2 = AgedPerson:new('Luke Skywalker', 21)
p1:speak()
p2:speak()