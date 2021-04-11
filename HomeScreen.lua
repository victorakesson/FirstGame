gameOver = false
pauseGame = false
mainMenu = true
tutorial = false

greenFont = {0, 2, 0, 2}
bigFont = love.graphics.newFont("OpenSans-Bold.ttf", 100)
smallFont = love.graphics.newFont("OpenSans-Bold.ttf", 25)
miniFont = love.graphics.newFont("OpenSans-Bold.ttf", 15)

function love.update(dt)
    if gameOver or pauseGame or tutorial or mainMenu then
      return
    end
end
    
    if gameOver == true then
      love.graphics.print({greenFont, ("Game")}, bigFont, 200, 150)
      love.graphics.print({greenFont, ("Over")}, bigFont , 220, 250)
      love.graphics.print({greenFont, ("R To Restart")}, smallFont, 256, 400)
      love.graphics.print({greenFont, ("Esc To Exit")}, smallFont, 266, 450)
      return
    elseif pauseGame == true then
      love.graphics.print({greenFont, ("ClIMB RACE")}, bigFont , 110, 150) 
      love.graphics.print({greenFont, ("Paused")}, smallFont , 210, 300) 
      love.graphics.print({greenFont, ("Press P To Continue")}, smallFont , 210, 350) 
      return
    elseif mainMenu == true then
      love.graphics.print({greenFont, ("Welcome To")}, smallFont , 250, 150) 
      love.graphics.print({greenFont, ("CLIMB RACE")}, bigFont , 110, 200) 
      love.graphics.print({greenFont, ("Press ENTER To Start The Game")}, smallFont , 170, 400) 
      return
    elseif tutorial == true then
      love.graphics.setColor(0, 1, 0)
      love.graphics.print({greenFont, ("CLIMB RACE")}, bigFont , 110, 130) 
      love.graphics.print({greenFont, ("T To Continue")}, smallFont , 145, 300) 
      love.graphics.rectangle('line', 139, 305, 30, 30)
      love.graphics.print({greenFont, ("Esc To Exit")}, smallFont , 345, 300)
      love.graphics.rectangle('line', 339, 305, 54, 30)
      love.graphics.print({greenFont, ("R To Restart")}, smallFont , 145, 360) 
      love.graphics.rectangle('line', 139, 365, 30, 30)
      love.graphics.print({greenFont, ("P To Pause")}, smallFont , 345, 360) 
      love.graphics.rectangle('line', 339, 365, 30, 30)
      love.graphics.print({greenFont, ("Arrows To Move Sideways")}, smallFont , 170, 479) 
      return
    end 