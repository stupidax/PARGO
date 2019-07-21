local cardList = {}

local obj = require('cards.typeConstants')
print('hey ')
print(obj.nature.weapon)
  
local hache = {}
hache.id = 001
-- hache.type = 
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