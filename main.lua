io.stdout:setvbuf('no')
love.graphics.setDefaultFilter("nearest")
love.window.setMode(960,540)
love.window.setTitle('Pargo')

local const = require('cards.cardConstants')
local Card = require('cards.Card')
require('quadCreation')
require('cards.drawCard')

function love.load(arg)
if arg[#arg] == "-debug" then require("mobdebug").start() end

-- Card creation test / To be deleted
t = Card:new{1}
if t then print(t.id) end

--provisoire
--bg
test = love.graphics.newImage('asset/basePlateau.png')


-- Card image decomposition : img & quad // frame number = index
-- picture
picture = {}
picture.img = love.graphics.newImage('asset/basePicture.png')
picture.quad = quadCreation(picture.img, 60, 40)

-- card Nature
nature = {}
nature.img = love.graphics.newImage('asset/baseNatureAndSide.png')
nature.quad = quadCreation(nature.img, 72, 106)

-- card Stamina
stamina = {}
stamina.img = love.graphics.newImage('asset/baseStamina.png')
stamina.quad = quadCreation(stamina.img, 36, 5)

-- card Special
special = {}
special.img = love.graphics.newImage('asset/baseSpecial.png')
special.quad = quadCreation(special.img, 5, 7)

-- card Skills
skills = {}
skills.img = love.graphics.newImage('asset/baseSkills.png')
skills.quad = quadCreation(skills.img, 20, 20)

-- card Selection
selection = {}
selection.img = love.graphics.newImage('asset/baseSelection.png')
selection.quad = quadCreation(selection.img, 76, 110)

  --font
  font = love.graphics.newImageFont('asset/baseFont.png',
    "abcdefghijklmnopqrstuvwxyz"..
    "éèöäç;à"..
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ"..
    ".:!?-+0123456789 ")
  love.graphics.setFont(font)

end

function love.update(dt)
  
end

function love.draw()
--scale
love.graphics.scale(2,2)

--draw bg
love.graphics.draw(test)

--draw card 
drawCard(t, 1)


  
  
  
end

function love.keypressed(key)
--quit
if key == 'escape' then
  love.event.push('quit')
end
  
  
end
