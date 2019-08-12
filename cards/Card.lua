local Card = {}

local cards = require('cards.cardConstants')
local Utils = require('tools.Utils')
--Card.class = 'Card'

function Card:new(id)
  local card = {}
  card = Utils.clone(cards['hache']) -- use ID
  --card = cards['hache']
  return card
end

return Card