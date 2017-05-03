function love.load()
love.window.setMode(400,400)
angle1=0
end
function love.update(dt)
if love.keyboard.isDown("left") then angle1=angle1+1*dt end
if love.keyboard.isDown("right") then angle1=angle1-1*dt end
end 
function love.draw()
  drvo(120,200,50,11+angle1)
  love.graphics.print(angle1,10,10)
end
function drvo(x0,y0,len,angle,angle1)
  angle1=0
  if (len>2) then
    x1=x0+len*math.cos(angle)
    y1=y0+len*math.sin(angle)
    love.graphics.line(x0,y0,x1,y1)
    drvo(x1,y1,len*0.75,angle-30)
    drvo(x1,y1,len*0.76,angle+50)
  end
end
