local GameModule = {}

local spritesheet = {}


function GameModule.init()
    spritesheet = love.graphics.newImage('resources/sprites/sprites.png')
end

function GameModule.open()
end

function GameModule.update(dt)

end

function GameModule.draw()
    love.graphics.setColor(0,1,0)
    love.graphics.rectangle("fill", 0,0,240,160)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(spritesheet, 10, 10)
    love.graphics.print('hello game')
end

return GameModule;