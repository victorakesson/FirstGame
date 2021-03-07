love.physics.setMeter(64) 

local world = love.physics.newWorld(0, 9.82*64, true) -- Detta ger världen tygndkraft 
-- Vi måste ha 64 på setMeter för att kunna få tyngdkraften 9.82 att funka då 64 är metern

local seconds = 0 -- Här anger vi att sekund är 0 vilket vi kommer använda till våran timer

local charachter = {} -- Här anger vi gubben som vi styr samt dess utseende

charachter.body = love.physics.newBody(world, 50, 400, 'dynamic')
charachter.body.setMass(charachter.body, 25)
charachter.shape = love.physics.newRectangleShape(0, 0, 50, 50)
charachter.fixture = love.physics.newFixture(charachter.body, charachter.shape)

local bar = {} -- Detta är plattformarna som gubben ska stå på. Dem dessa nästan identiska 
-- förutom platsen dem är på 
bar.body = love.physics.newBody(world, 0, 450, 'static') -- Detta är plattformens plats på banan
bar.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0) -- Detta är plattformens mått 
bar.fixture = love.physics.newFixture(bar.body, bar.shape) 

local barsecond = {}
barsecond.body = love.physics.newBody(world, 600, 450, 'static') -- 600 är vart plattformen sitter sidleds
barsecond.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barsecond.fixture = love.physics.newFixture(barsecond.body, barsecond.shape)

local barthird = {}
barthird.body = love.physics.newBody(world, 300, 450, 'static')
barthird.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barthird.fixture = love.physics.newFixture(barthird.body, barthird.shape)

love.graphics.setBackgroundColor(0.2, 180, 0) -- Ändrar bakgrundsfärgen till grön
  love.window.setMode(800, 800 ) -- Detta anger hur stort fönstret som Love öppnar är i mitt fall har jag 800 800 då min sista plattform börjar vid 600

love.draw = function() -- Här ritar vi ut allting på banan

  love.graphics.setColor(0.3, 0.3, 0)
    love.graphics.polygon('fill', barsecond.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('fill', bar.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.polygon('fill', barthird.body:getWorldPoints(bar.shape:getPoints()))
  love.graphics.setColor(0.7, 0, 0,2)
  love.graphics.polygon('fill', charachter.body:getWorldPoints(charachter.shape:getPoints()))
  local clock_display = 'Time: ' .. seconds -- Detta gör så att vår timer visar sekunderna
  love.graphics.print(clock_display, 0, 0, 0, 1.1, 1.1) -- Detta är vår klockas plats och färg

end

love.update = function(dt) -- Här börjar koden för tangentbordet och hur tiden räknas
  world:update(dt) -- Detta updaterar världens tid (dt)

  seconds = seconds + dt -- Detta gör så att seconds vilket vi angav 0 innan ökar med dt (tiden som har gått) 

if love.keyboard.isDown("d") then -- Om vi klickar på D går den åt höger 
  charachter.body:applyForce(500,0) -- 500 anger hur snabbt gubben rör sig 
elseif love.keyboard.isDown("a") then -- klickar vi a så går den åt vänster
  charachter.body:applyForce(-500,0)
elseif love.keyboard.isDown("space") then -- mitt försök till att hoppa ska försöka lösa det 
  charachter.body:applyForce(0, 200)
end
end





