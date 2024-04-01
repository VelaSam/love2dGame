_G.love = require("love")
require "./game"

local function checkForBorderCrossing()
   if circle.x + circle.radius >= board.x + board.width or circle.x - circle.radius <= board.x then
        circle:changeXDirection()
    end 
    if circle.y + circle.radius >= board.y + board.height or circle.y - circle.radius <= board.y then
        circle:changeYDirection()
    end 
end
---------------LOVE FRAMEWORK METHODS-------------------------
function love.load()
    _G.board = Board()
    _G.leftPaddle = Paddle()
    _G.rightPaddle = Paddle(200, 50)
    _G.circle = Circle()
end

function love.update(dt)
    circle.x = circle.x + circle.vx
    circle.y = circle.y + circle.vy

    checkForBorderCrossing()
 


end

function love.draw()
    love.graphics.rectangle("line", board.x, board.y, board.width, board.height)
    love.graphics.rectangle("fill", leftPaddle.x, leftPaddle.y, leftPaddle.width, leftPaddle.height)
    love.graphics.rectangle("fill", rightPaddle.x, rightPaddle.y, rightPaddle.width, rightPaddle.height)
    love.graphics.circle("fill", circle.x, circle.y, circle.radius)
    love.graphics.print("ball x pos: " .. circle.x)
    love.graphics.print("\nball y pos: " .. circle.y)
end



