gameOver = false
pauseGame = false
Menu = true
tutorial = false

fontcolor = {3, 1, 3, 1}
bigFont = love.graphics.newFont("OpenSans-Bold.ttf", 100)
smallFont = love.graphics.newFont("OpenSans-Bold.ttf", 25)
miniFont = love.graphics.newFont("OpenSans-Bold.ttf", 15)

function love.draw()

    if gameOver == true then
      love.graphics.print({fontcolor, ("Game")}, bigFont, 200, 150)
      love.graphics.print({fontcolor, ("Over")}, bigFont , 220, 250)
      love.graphics.print({fontcolor, ("R To Restart")}, smallFont, 256, 400)
      love.graphics.print({fontcolor, ("Esc To Exit")}, smallFont, 266, 450)
      
    elseif pauseGame == true then
      love.graphics.print({fontcolor, ("ClIMB RACE")}, bigFont , 110, 150) 
      love.graphics.print({fontcolor, ("Paused")}, smallFont , 210, 300) 
      love.graphics.print({fontcolor, ("Press P To Continue")}, smallFont , 210, 350) 
    
    elseif Menu == true and tutorial == false then 
      love.graphics.print({fontcolor, ("Welcome To")}, smallFont , 250, 150) 
      love.graphics.print({fontcolor, ("CLIMB RACE")}, bigFont , 110, 200) 
      love.graphics.print({fontcolor, ("Press ENTER To Start The Game")}, smallFont , 170, 400)
    end
    if tutorial == true and pauseGame == false then
      love.graphics.print({fontcolor, ("CLIMB RACE")}, bigFont , 110, 130) 
      love.graphics.print({fontcolor, ("T To Continue")}, smallFont , 145, 300) 
      love.graphics.rectangle('line', 139, 305, 30, 30)
      love.graphics.print({fontcolor, ("Esc To Exit")}, smallFont , 345, 300)
      love.graphics.rectangle('line', 339, 305, 54, 30)
      love.graphics.print({fontcolor, ("R To Restart")}, smallFont , 145, 360) 
      love.graphics.rectangle('line', 139, 365, 30, 30)
      love.graphics.print({fontcolor, ("P To Pause")}, smallFont , 345, 360) 
      love.graphics.rectangle('line', 339, 365, 30, 30)
      love.graphics.print({fontcolor, ("Arrows To Move Sideways")}, smallFont , 170, 479) 
      return
    end 
end
