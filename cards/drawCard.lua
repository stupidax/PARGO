-- cardIndex as Int ; cardPosition in hand as Int 
function drawCard(card, cardPosition)
local boardConstant = require('board.boardConstants')
require('main')


-- picture
  love.graphics.draw(picture.img, picture.quad[card.id], boardConstant[cardPosition]['x'] + 6 , boardConstant[cardPosition]['y'] + 36)

-- nature & side
  local natureSide = 0
  if card.side == 'ennemy' then
    natureSide = 3
  end
  if card.nature == 'ARMOR' then
    natureSide = natureSide + 3
  elseif card.nature == 'WEAPON' then
    natureSide = natureSide + 2
  else 
    natureSide = natureSide + 1
  end
  love.graphics.draw(nature.img, nature.quad[natureSide], boardConstant[cardPosition]['x'], boardConstant[cardPosition]['y'])

-- stamina
  love.graphics.draw(stamina.img, stamina.quad[card.stamina], boardConstant[cardPosition]['x'] + 16 , boardConstant[cardPosition]['y'] + 10)
  
-- skills
  -- skill1
  if card.skill1 == nil then
    love.graphics.draw(skills.img, skills.quad[12], boardConstant[cardPosition]['x'] + 24 , boardConstant[cardPosition]['y'] + 81)
  else
    love.graphics.draw(skills.img, skills.quad[2], boardConstant[cardPosition]['x'] + 24 , boardConstant[cardPosition]['y'] + 81)
  end

  --skill2
  if card.skill2 == nil then
    love.graphics.draw(skills.img, skills.quad[12], boardConstant[cardPosition]['x'] + 47 , boardConstant[cardPosition]['y'] + 81)
  else
    love.graphics.draw(skills.img, skills.quad[1], boardConstant[cardPosition]['x'] + 47 , boardConstant[cardPosition]['y'] + 81)
  end
  
-- special
  love.graphics.draw(special.img, special.quad[3], boardConstant[cardPosition]['x'] + 62 , boardConstant[cardPosition]['y'] + 33)

-- card Texte : in black or white
love.graphics.setColor(0,0,0)
  -- name
    love.graphics.print(card.name, boardConstant[cardPosition]['x'] + 20 , boardConstant[cardPosition]['y'] + 20)

  -- attack
    love.graphics.print(card.attack, boardConstant[cardPosition]['x'] + 9 , boardConstant[cardPosition]['y'] + 5)
    
  -- defense
love.graphics.setColor(1,1,1)
    love.graphics.print(card.def, boardConstant[cardPosition]['x'] + 55 , boardConstant[cardPosition]['y'] + 5)

  -- damage
love.graphics.setColor(0,0,0)
    love.graphics.print(card.damage, boardConstant[cardPosition]['x'] + 12 , boardConstant[cardPosition]['y'] + 68)

  -- priority
love.graphics.setColor(1,1,1)
    love.graphics.print(card.priority, boardConstant[cardPosition]['x'] + 8 , boardConstant[cardPosition]['y'] + 87)

end
