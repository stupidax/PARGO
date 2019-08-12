-- Add a file that will save multiple players
local helper = require('player.PlayerHelper')
local Deck = require('cards.DeckController')

local Entity = {}
Entity.class = 'Player'

local id = 0

function Entity:new(name)
  local o = {}
  setmetatable(o, Entity)
  self.__index = self
  o.name = name
  o.id = id + 1
  o.hp = 20
  o.stamina = 5
  o.strength = 10
  o.deck = Deck:new{}
  return o
end
  
  --@param {string} attribute - name of the characteristic
  --@param {number} value - quantity to add
function Entity:addAttribute(attribute, value)
  --TODO Make safety check (create a helper that contains the allowed attributes?)
  self[attribute] = self[attribute] + value
  return nil
end

  --@param {string} attribute - name of the characteristic
  --@return {Object} - return the value of the characteristic
function Entity:getAttribute(attribute)
  return self[attribute]
end

function Entity:getDeck()
  return self.deck
end

return Entity