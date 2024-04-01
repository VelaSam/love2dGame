_G.love = require("love")

function love.load()
    _G.number = 0

    _G.rectangleX = 50
    _G.rectangleY = 50

    _G.width = 700
    _G.height = 500


    WhiteSquareX = 100
    WhiteSquareY = 100

    WhiteSquareWidth = 20
    WhiteSquareHeight = 100

    goingUp = true
    goingRight = true

    Xvelocity = 0
    Yvelocity = 1
end

function love.update(dt)
    _G.number = number+1

    if(goingRight) then
        WhiteSquareX = WhiteSquareX + Xvelocity
        if WhiteSquareX + WhiteSquareWidth == rectangleX + _G.width then
            goingRight = false
        end
     else 
        WhiteSquareX =  WhiteSquareX - Xvelocity
        if WhiteSquareX == rectangleX then
            goingRight = true
        end
     end

    if(goingUp) then
        WhiteSquareY = WhiteSquareY + Yvelocity
        if WhiteSquareY + WhiteSquareHeight == rectangleY + _G.height then
            goingUp = false
        end
     else 
        WhiteSquareY =  WhiteSquareY - Yvelocity
        if WhiteSquareY == rectangleY then
            goingUp = true
        end
     end
end

function love.draw()
    love.graphics.print("Hello world: " .. _G.number)
    love.graphics.rectangle("line", rectangleX, rectangleY, _G.width, _G.height)
    love.graphics.rectangle("fill", WhiteSquareX, WhiteSquareY, WhiteSquareWidth, WhiteSquareHeight)
end
