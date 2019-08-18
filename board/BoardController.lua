local Board = {}

function Board:new(p1, p2)
  setmetatable(self, Board)
  self.p1 = p1
  self.p2 = p2
  self.id = 1
  return self
end

-- HELP ! Pourquoi ça fonctionne pas ?
function Board:onKey(x,y)
  print('Board::onKey x:',x)
  print('Board::onKey y:',y)
  print('--------------------')
end

return Board