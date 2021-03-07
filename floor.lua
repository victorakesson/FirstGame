local world = love.physics.newWorld(0, 100)

local bar = {}
bar.body = love.physics.newBody(world, 200, 450, 'static')
bar.shape = love.physics.newPolygonShape(0, 0, 0, 20, 400, 20, 400, 0)
bar.fixture = love.physics.newFixture(bar.body, bar.shape)


local key_map = {
  escape = function()
    love.event.quit()
  end
}

love.draw = function()

  love.graphics.polygon('line', bar.body:getWorldPoints(bar.shape:getPoints()))
end

love.update = function(dt)
  world:update(dt)
end
