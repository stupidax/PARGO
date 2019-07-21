io.stdout:setvbuf('no')
love.graphics.setDefaultFilter("nearest")
love.window.setMode(960,540)
love.window.setTitle('Pargo')

local const = require('cards.cardConstants')

function love.load(arg)
if arg[#arg] == "-debug" then require("mobdebug").start() end

--provisoire
--bg
test = love.graphics.newImage('asset/basePlateau.png')
  
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
