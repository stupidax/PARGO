local Board = {}

-- Create an object that has board items to be rendered
-- To be moved in a model ?
local boardCards = {}

function Board:new(p1, p2)
  local o = {}
  setmetatable(o, Board)
  o.p1 = p1
  o.p2 = p2
  return o
end

function Board:getCards()
  return boardCards
end

function Board:setP1LeftCard(card)
  boardCards['p1left'] = card
end

function Board:setP1RightCard(card)
  boardCards['p1right'] = card
end

function Board:setP2LeftCard(card)
  boardCards['p2left'] = card
end

function Board:setP2RightCard(card)
  boardCards['p2right'] = card
end

-- set the top card to be shown on the deck
function Board:setDeckCard(card)
  boardCards['deckCard'] = card
end

return Board