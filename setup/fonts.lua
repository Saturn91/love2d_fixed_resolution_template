font = {}

function font.init()
    font["mono16"] = love.graphics.newImageFont("resources/fonts/font1.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 :-!.,\"?>_", 0)
    font["mono16"]:setLineHeight(1)

    font["dialog"] = love.graphics.newImageFont("resources/fonts/font2.png", " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?-+/():;%&`_*#=[]'{}", 0)
    font["dialog"]:setLineHeight(.6)

    font["tiny"] = love.graphics.newImageFont("resources/fonts/font3.png", " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.-,!:()[]{}<>", 0)
    font["tiny"]:setLineHeight(.8)
end

return font