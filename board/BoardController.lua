local Board = {}

function Board:new(p1, p2)
  local o = {}
  setmetatable(o, Board)
  o.p1 = p1
  o.p2 = p2
  return o
end



return Board