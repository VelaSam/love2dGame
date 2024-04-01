function Board() 
    return {
        x = 50, y = 50, width = 700, height = 500
    }
end

function Paddle(x, y, color)
    return {
        x = x or 125, y = y or 250, width = 10, height = 100, color = color or "white"
    }
end

function Circle()
    return {
        x = 50 + 350,
        y = 50 + 250,
        radius = 10,
        vx = 1,
        vy = 1,
        changeYDirection = function(self)
            self.vy = (self.vy == 1) and -1 or 1
        end,
        changeXDirection = function(self)
            self.vx = (self.vx == 1) and -1 or 1
        end,
    }
end
