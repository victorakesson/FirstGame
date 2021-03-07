love.physics.setMeter(64)
local world = love.physics.newWorld(0, 9.82*64, true)

local seconds = 0

local charachter = {}

charachter.body = love.physics.newBody(world, 50, 400, 'dynamic')
charachter.body.setMass(charachter.body, 25)
charachter.shape = love.physics.newRectangleShape(0, 0, 50, 50)
charachter.fixture = love.physics.newFixture(charachter.body, charachter.shape)

local bar = {}
bar.body = love.physics.newBody(world, 0, 450, 'static')
bar.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
bar.fixture = love.physics.newFixture(bar.body, bar.shape)

local barsecond = {}
barsecond.body = love.physics.newBody(world, 600, 450, 'static')
barsecond.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barsecond.fixture = love.physics.newFixture(barsecond.body, barsecond.shape)

local barthird = {}
barthird.body = love.physics.newBody(world, 300, 450, 'static')
barthird.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barthird.fixture = love.physics.newFixture(barthird.body, barthird.shape)

love.graphics.setBackgroundColor(0.2, 180, 0)
  love.window.setMode(650, 650)

love.draw = function()

  love.graphics.setColor(0.3, 0.3, 0)
    love.graphics.polygon('fill', barsecond.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('fill', bar.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('fill', barthird.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.setColor(0.7, 0, 0,2)
  love.graphics.polygon('fill', charachter.body:getWorldPoints(charachter.shape:getPoints()))
  local clock_display = 'Time: ' .. seconds
  love.graphics.print(clock_display, 0, 0, 0, 1.1, 1.1)

end

love.update = function(dt)
  world:update(dt)

  seconds = seconds + dt 

if love.keyboard.isDown("d") then 
  charachter.body:applyForce(500,0)
elseif love.keyboard.isDown("a") then
  charachter.body:applyForce(-500,0)
end
end




