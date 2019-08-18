-- Create an object that has board items to be rendered

local Model = {}

function Model:new()
  local o = {}
  setmetatable(o, Model)
  self.__index = self
  o.boardCards = {}
end

function getCards()
  return self.boardCards
end

function Board:setP1LeftCard(card)
  self.boardCards['p1left'] = card
end

function Board:setP1RightCard(card)
  self.boardCards['p1right'] = card
end

function Board:setP2LeftCard(card)
  self.boardCards['p2left'] = card
end

function Board:setP2RightCard(card)
  self.boardCards['p2right'] = card
end

-- set the top card to be shown on the deck
function Board:setDeckCard(card)
  self.boardCards['deckCard'] = card
end

return Model
