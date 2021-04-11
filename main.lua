love.physics.setMeter(64) 

local x = 50 
local y = 400
local font 




local world = love.physics.newWorld(0, 9.82*64, true) -- This give the world gravity 
-- We need to set setMeter to 64 so we can make the world accept 64 bits as a meter which we then put in the Local world code

local seconds = 0 -- Here we put seconds to 0 so we use 0 as the start time

local charachter = {} --This is the charachter.

charachter.body = love.physics.newBody(world, x, y, 'dynamic')
charachter.body.setMass(charachter.body, 25)
charachter.shape = love.physics.newRectangleShape(0, 0, 50, 50)
charachter.fixture = love.physics.newFixture(charachter.body, charachter.shape)


local bar = {} -- These are the plattforms they are almost identical except for shape and size.
-- förutom platsen dem är på. 
bar.body = love.physics.newBody(world, 0, 450, 'static') -- The plattform.
bar.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0) -- The plattforms measurements.
bar.fixture = love.physics.newFixture(bar.body, bar.shape) 

local barsecond = {}
barsecond.body = love.physics.newBody(world, 600, 450, 'static') -- 600 is where the plattform is placed horizontaly.
barsecond.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barsecond.fixture = love.physics.newFixture(barsecond.body, barsecond.shape)

local barthird = {}
barthird.body = love.physics.newBody(world, 300, 450, 'static')
barthird.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barthird.fixture = love.physics.newFixture(barthird.body, barthird.shape)

love.graphics.setBackgroundColor(0.2, 180, 0) -- Changes the backgroundcolor
  love.window.setMode(800, 800 ) --This is how big the widow that love opens is in my case its 800x800 because my last plattform starts at 600.

love.draw = function() -- Draws the whole code.
  love.graphics.setColor(0.3, 0.3, 0)
  love.graphics.polygon('fill', barsecond.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('fill', bar.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('fill', barthird.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.setColor(0.7, 0, 0,2)
  love.graphics.polygon('fill', charachter.body:getWorldPoints(charachter.shape:getPoints()))
  local clock_display = 'Time: ' .. seconds --Makes the timer show seconds.
  love.graphics.print(clock_display, 0, 0, 0, 1.1, 1.1) -- The clocks place and color.

end

love.update = function(dt) -- This is the function for time and controls.
  world:update(dt) -- Updates the world time(dt).

  seconds = seconds + dt -- This makes seconds which we gave the base number 0 to increase with dt (The time the world has been up).

if love.keyboard.isDown("d") then -- Press d to move to the right.
  charachter.body:applyForce(500,0) -- 500 is the number at which force the charachter moves.
elseif love.keyboard.isDown("a") then -- press a to move to the left.
  charachter.body:applyForce(-500,0)
end
print(charachter.body:getY())
if love.keyboard.isDown("space") and (charachter.body:getY() > 420 and charachter.body:getY() < 440) then 
  charachter.body:applyForce(0,-8000)
end


HomeScreen = require("HomeScreen")
keys = require("keys")









