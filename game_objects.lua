function Board() 
    return {
        x = 50, y = 50, width = 700, height = 500
    }
end

function Paddle(x, y, color)
    return {
        x = x or 125, y = y or 250, width = 10, height = 100, color = color or "white",
        topBorder = function(self)
            return self.y
        end,
        bottomBorder = function(self)
            return self.y + self.height
        end,
        rightBorder = function(self)
            return self.x + self.width
        end,
        leftBorder = function(self)
            return self.x
        end
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
        isTouchingTop = function(self, border)
            return self.y >= border
        end,
        isTouchingBottom = function(self, border)
            return self.y <= border
        end,
        isTouchingRight = function(self,border)
            return self.x <= border
        end,
        isTouchingLeft = function(self,border)
            return self.x >= border
        end

    }
end
