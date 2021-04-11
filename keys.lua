function love.keypressed(k)
    if k == 'escape' then
      love.event.quit()
    elseif k == "r" then 
      love.event.quit("restart")
    elseif k == 'p' then
      pauseGame = not pauseGame 
    elseif k == 'return' then
   Menu = not Menu 
    elseif k == 't' then
      tutorial = not tutorial
    end
end