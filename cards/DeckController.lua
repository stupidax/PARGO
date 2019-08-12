local Deck = {}

function Deck:new()
  local o = {}
  setmetatable(o, Deck)
  o.cards = {}
  return o
end

function Deck:reset()
  self.cards = nil
end

function Deck:getHand()
  return self.cards
end

function Deck:addCard(card)
  table.insert(self.cards, card)
end

return Deck