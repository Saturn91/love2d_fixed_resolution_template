local Setup = {}

function Setup.init()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setFullscreen(true)
end

function Setup.scaleScreen(resolution)
    local width =love.graphics.getWidth()
    local height =love.graphics.getHeight()
    local xscale = width/resolution.x
    local yscale = height/resolution.y
    local scale = math.floor(math.min(xscale, yscale))
    -- Maybe also call math.floor, if you want
    local xoffset = math.floor(width-resolution.x*scale)/2
    local yoffset = math.floor(height-resolution.y*scale)/2

    love.graphics.translate(xoffset, yoffset)
    love.graphics.scale(scale, scale)
end

return Setup;