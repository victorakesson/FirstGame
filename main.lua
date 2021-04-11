love.physics.setMeter(64)

x = 50
y = 700

world = love.physics.newWorld(0, 9.82 * 64, true) -- This give the world gravity 
-- We need to set setMeter to 64 so we can make the world accept 64 bits as a meter which we then put in the Local world code

seconds = 0 -- Here we put seconds to 0 so we use 0 as the start time

charachter = {} -- This is the charachter.

charachter.body = love.physics.newBody(world, x, y, 'dynamic')
charachter.body.setMass(charachter.body, 25)
charachter.shape = love.physics.newRectangleShape(0, 0, 50, 50)
charachter.fixture = love.physics.newFixture(charachter.body, charachter.shape)

bar = {} -- These are the plattforms they are almost identical except for shape and size.
bar.body = love.physics.newBody(world, -50, 700, 'static') -- The plattform.
bar.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0) -- The plattforms measurements.
bar.fixture = love.physics.newFixture(bar.body, bar.shape)

barsecond = {}
barsecond.body = love.physics.newBody(world, 700, 700, 'static') -- 600 is where the plattform is placed horizontaly.
barsecond.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barsecond.fixture = love.physics.newFixture(barsecond.body, barsecond.shape)

barthree = {}
barthree.body = love.physics.newBody(world, 300, 550, 'static')
barthree.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barthree.fixture = love.physics.newFixture(barthree.body, barthree.shape)

barfour = {}
barfour.body = love.physics.newBody(world, 600, 350, 'static')
barfour.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barfour.fixture = love.physics.newFixture(barfour.body, barfour.shape)

barfive = {}
barfive.body = love.physics.newBody(world, 600, 150, 'static')
barfive.shape = love.physics.newPolygonShape(0, 0, 0, 20, 200, 20, 200, 0)
barfive.fixture = love.physics.newFixture(barfive.body, barfive.shape)

flag = {}
function love.load() flag = love.graphics.newImage("Assets/flag.png") end

love.graphics.setBackgroundColor(0.2, 180, 0) -- Changes the backgroundcolor
love.window.setMode(800, 800) -- This is how big the widow that love opens is in my case its 800x800 because my last plattform starts at 600.

love.update = function(dt) -- This is the function for time and controls.
    world:update(dt) -- Updates the world time(dt).

    seconds = seconds + dt -- This makes seconds which we gave the base number 0 to increase with dt (The time the world has been up).

    charachterY = charachter.body:getY()

    if (charachterY > love.graphics.getHeight()) then
        gameOver = true
        return
    end

    if Menu == true then return end
    if love.keyboard.isDown("d") then -- Press d to move to the right.
        charachter.body:applyForce(300, 0) -- 500 is the number at which force the charachter moves.
    elseif love.keyboard.isDown("a") then -- press a to move to the left.
        charachter.body:applyForce(-300, 0)
    end
    print(charachter.body:getX())
    if love.keyboard.isDown("space") and
        (charachter.body:getY() > 670 and charachter.body:getY() < 710) then
        charachter.body:applyForce(0, -13000)
    elseif love.keyboard.isDown("space") and
        (charachter.body:getY() > 520 and charachter.body:getY() < 530) and
        (charachter.body:getX() > 310 and charachter.body:getX() < 475) then
        charachter.body:applyForce(0, -17000)
    elseif love.keyboard.isDown("space") and
        (charachter.body:getY() > 315 and charachter.body:getY() < 330) and
        (charachter.body:getX() > 590 and charachter.body:getX() < 800) then
        charachter.body:applyForce(0, -12000)
    end
    if (charachter.body:getY() > 120 and charachter.body:getY() < 130 and
        (charachter.body:getX() > 685 and charachter.body:getX() < 700)) then
        victory = true
        return
    end
end

HomeScreen = require("HomeScreen")
keys = require("keys")
require "lovedraw"

