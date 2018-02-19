-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--Josh Bradbrook 02.02.18 C1
-- 
local h = display.contentHeight
local w = display.contentWidth
--display.setStatusBar( display.HiddenStatusBar)
--skye
local sky = display.newImage("sky.png", w, h)
sky.x = w/2
sky.y = h/2

--Water
local waterLevel = display.newLine(0, h/5, w, h/5)
waterLevel.width = h/200
waterLevel:setColor(0,0,2,1)

local water = display.newImage("water.jpg", 275, 183)
water.xScale = 3
water.yScale = 5
water.x = w/2
water.y = h*0.65

--title
local titleBub = display.newText("Bubbles 'HD'", w/2, h/6, native.systemFontBold, 80)
titleBub:setFillColor(255,255,255,1)
transition.to(titleBub, {time = 2000, alpha = 1})

--bubbles
local bubble1 = display.newCircle(w/2, h, w/50)
bubble1:setFillColor(1,0,1,1)
transition.to(bubble1, {time = 3000, y = h/5})
transition.to(bubble1, {time = 2000, delay = 2000, alpha = 0, xScale = 20, yScale = 20})
--bubble loop
for i=1, 20 do
    local randomSpawn = math.random(20, w-20)
    local R = math.random(100)
    local G = math.random(100)
    local B = math.random(100)
    local randomSize = math.random(10, 60)
    local bubble1 = display.newCircle(randomSpawn, h, randomSize)
    bubble1:setFillColor(R/100,G/100,B/100,1)
    transition.to(bubble1, {time = 50000/randomSize, y = h/5})
    transition.to(bubble1, {time = 2000, delay = 45000/randomSize, alpha = 0, xScale = 20, yScale = 20})
end
