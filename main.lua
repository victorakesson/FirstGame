local world = love.physics.newWorld(0, 100)

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


love.draw = function()
    love.graphics.polygon('line', barsecond.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('line', bar.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('line', barthird.body:getWorldPoints(bar.shape:getPoints()))
end

