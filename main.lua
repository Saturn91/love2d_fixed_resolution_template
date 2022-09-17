local Setup = require 'setup/setup'
local GameModule = require './game/game'

local actModule = nil
local font = require 'setup/fonts'

function openModule(module)
    actModule = module
    actModule.open()
end

function love.load()
    Setup.init()
    GameModule.init()
    love.graphics.setFont(font['dialog'])
    openModule(GameModule)
end

function love.update(dt)
    actModule.update(dt)
end

function love.draw()
    Setup.scaleScreen({x=240,y=160})
    love.graphics.clear(0,0,0);
    actModule.draw()
end
