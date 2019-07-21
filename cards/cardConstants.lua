local cardList = {}

local constants = require('cards.typeConstants')
local nature = constants.nature
local special = constants.special

-- TODO: DELETE ME 
print('hey ')
print(nature.weapon)
  
local hache = {}
hache.id = 001
hache.nature = nature.weapon
hache.special = special.violent
hache.name = 'Hache'
hache.attack = 6
hache.def = -2
hache.stamina = 4
hache.damage = 6
hache.priority = -2
hache.skill1 = 'string'
hache.skill2 = nil


cardList['hache'] = hache

return cardList