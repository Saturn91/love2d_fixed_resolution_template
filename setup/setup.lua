local Setup = {}
Setup.scale = 1
Setup.resolution={}
Setup.borderColor = {
    r=0,
    g=0,
    b=0
}

local top;
local right;
local left;
local bottom;


function drawBorders()
    love.graphics.setColor(Setup.borderColor.r,Setup.borderColor.g,Setup.borderColor.b)
    love.graphics.rectangle('fill', top.x,top.y,top.w,top.h)
    love.graphics.rectangle('fill', right.x,right.y,right.w,right.h)
    love.graphics.rectangle('fill', left.x,left.y,left.w,left.h)
    love.graphics.rectangle('fill', bottom.x,bottom.y,bottom.w,bottom.h)
end

Setup.Frame = {
    draw=drawBorders
}

function Setup.init(resolution)
    Setup.resolution = resolution
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setMode(
        2*resolution.x,
        2*resolution.y,
        {
            fullscreen=false,
            resizable=true,
            minwidth=resolution.x,
            minheight=resolution.y
        })
end

function Setup.scaleScreen()
    local resolution = Setup.resolution
    local width =love.graphics.getWidth()
    local height =love.graphics.getHeight()
    local xscale = width/resolution.x
    local yscale = height/resolution.y
    Setup.scale = math.floor(math.min(xscale, yscale))
    local xoffset = math.floor(width-resolution.x*Setup.scale)/2
    local yoffset = math.floor(height-resolution.y*Setup.scale)/2

    top = {x=-xoffset,y=-yoffset,w=width,h=yoffset}
    left = {x=-xoffset,y=-yoffset,w=xoffset,h=height}
    right = {x=resolution.x,y=0,w=xoffset,h=height}
    bottom = {x=0,y=resolution.y,w=width,h=yoffset}

    love.graphics.translate(xoffset, yoffset)
    love.graphics.scale(Setup.scale, Setup.scale)
end

function Setup.getScale()
    return Setup.scale
end

return Setup;