local Model = require('board.BoardModel')

local Board = {}
local model

function Board:new(p1, p2)
  local o = {}
  setmetatable(o, Board)
  o.p1 = p1
  o.p2 = p2
  model = Model:new()
  return o
end

return Board