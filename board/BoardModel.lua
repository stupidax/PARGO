-- Create an object that has board items to be rendered

local Model = {}

function Model:new()
  setmetatable(self, Model)
  self.__index = self
  self.boardCards = {}
end

function getCards()
  return self.boardCards
end

function Model:setP1LeftCard(card)
  self.boardCards['p1left'] = card
end

function Model:setP1RightCard(card)
  self.boardCards['p1right'] = card
end

function Model:setP2LeftCard(card)
  self.boardCards['p2left'] = card
end

function Model:setP2RightCard(card)
  self.boardCards['p2right'] = card
end

-- set the top card to be shown on the deck
function Model:setDeckCard(card)
  self.boardCards['deckCard'] = card
end

return Model
