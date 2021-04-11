love.draw = function() -- Draws the whole code.
  

    if victory == true then 
      love.graphics.print({fontcolor, ("VICTORY!!!")}, bigFont, 200, 150)
      love.graphics.print({fontcolor, ("R To Restart")}, smallFont, 256, 400)
      return 
    elseif gameOver == true then
        love.graphics.print({fontcolor, ("Game")}, bigFont, 200, 150)
        love.graphics.print({fontcolor, ("Over")}, bigFont , 220, 250)
        love.graphics.print({fontcolor, ("R To Restart")}, smallFont, 256, 400)
        love.graphics.print({fontcolor, ("Esc To Exit")}, smallFont, 266, 450)
        return
      elseif pauseGame == true then
        love.graphics.print({fontcolor, ("ClIMB RACE")}, bigFont , 110, 150) 
        love.graphics.print({fontcolor, ("Paused")}, smallFont , 210, 300) 
        love.graphics.print({fontcolor, ("Press P To Continue")}, smallFont , 210, 350) 
        return
      elseif Menu == true and tutorial == false then 
        love.graphics.print({fontcolor, ("Welcome To")}, smallFont , 250, 150) 
        love.graphics.print({fontcolor, ("CLIMB RACE")}, bigFont , 110, 200) 
        love.graphics.print({fontcolor, ("Press ENTER To Start The Game")}, smallFont , 170, 400)
        return
        
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
      love.graphics.draw(flag, 675, 100,0, 0.2)
      love.graphics.setColor(0.3, 0.3, 0)
      love.graphics.polygon('fill', barsecond.body:getWorldPoints(bar.shape:getPoints()))
      love.graphics.polygon('fill', bar.body:getWorldPoints(bar.shape:getPoints()))
      love.graphics.polygon('fill', barthree.body:getWorldPoints(bar.shape:getPoints()))
      love.graphics.polygon('fill', barfour.body:getWorldPoints(bar.shape:getPoints()))
      love.graphics.polygon('fill', barfive.body:getWorldPoints(bar.shape:getPoints()))
      love.graphics.setColor(0.7, 0, 0,2)
      love.graphics.polygon('fill', charachter.body:getWorldPoints(charachter.shape:getPoints()))
      local clock_display = 'Time: ' .. seconds --Makes the timer show seconds.
      love.graphics.print(clock_display, 0, 0, 0, 1.1, 1.1) -- The clocks place and color.
    
    end

