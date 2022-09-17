local Setup = require 'setup/setup'
local GameModule = require './game/game'

local actModule = nil
local font = require 'setup/fonts'

function openModule(module)
    actModule = module
    actModule.open()
end

function love.load()
    Setup.init({x=240,y=160})
    font.init()
    GameModule.init()
    love.graphics.setFont(font['mono16'])
    openModule(GameModule)
end

function love.update(dt)
    actModule.update(dt)
end

function love.draw()
    Setup.scaleScreen()
    love.graphics.clear(1,0,0);
    actModule.draw()
    Setup.Frame.draw()
end
