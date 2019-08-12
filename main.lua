io.stdout:setvbuf('no')
love.graphics.setDefaultFilter("nearest")
love.window.setMode(960,540)
love.window.setTitle('Pargo')

local const = require('cards.cardConstants')
local Card = require('cards.Card')
require('quadCreation')

function love.load(arg)
if arg[#arg] == "-debug" then require("mobdebug").start() end

-- Card creation test / To be deleted
local t = Card:new{1}
if t then print(t.id) end

--provisoire
--bg
test = love.graphics.newImage('asset/basePlateau.png')
cardTest = {}
cardTest.img = love.graphics.newImage('asset/baseCarte.png')
cardTest.quad = quadCreation(cardTest.img, 72,106)

end

function love.update(dt)
  
end

function love.draw()
--scale
love.graphics.scale(2,2)

--draw bg
love.graphics.draw(test)


  
  
  
end

function love.keypressed(key)
--quit
if key == 'escape' then
  love.event.push('quit')
end
  
  
end
