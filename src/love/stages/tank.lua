return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("week7/tankSky"))), -- tankSky
		    graphics.newImage(love.graphics.newImage(graphics.imagePath("week7/tankGround"))), -- tankGround
            love.filesystem.load("sprites/week7/tankWatchtower.lua")(), -- tankWatchtower
            love.filesystem.load("sprites/week7/smokeLeft.lua")(), -- smokeLeft
		    love.filesystem.load("sprites/week7/smokeRight.lua")() -- smokeRight
        }
        picoSpeaker = love.filesystem.load("sprites/week7/picoSpeaker.lua")()
        picoSpeaker:animate("idle", true)
        for i = 0, 5 do
            stageImages[i+6] = love.filesystem.load("sprites/week7/tank" .. i .. ".lua")() -- all the tank viewers
        end
        girlfriend = love.filesystem.load("sprites/week7/gfTankmen.lua")()
		enemy = love.filesystem.load("sprites/week7/tankmanCaptain.lua")()
        stageImages[6].x, stageImages[6].y = -1000, 603
		stageImages[7].x, stageImages[7].y = -675, 739
		stageImages[8].x, stageImages[8].y = -250, 614
		stageImages[9].x, stageImages[9].y = 250, 703
		stageImages[10].x, stageImages[10].y = 675, 606
		stageImages[11].x, stageImages[11].y = 1000, 618 

        stageImages[1].sizeX, stageImages[1].sizeY = 1.3, 1.3
        stageImages[2].sizeX, stageImages[2].sizeY = 1.3, 1.3
        stageImages[2].y = 100

        picoSpeaker.x, picoSpeaker.y = 105, 110
		girlfriend.x, girlfriend.y = 15, 190
		enemy.x, enemy.y = -560, 339
		boyfriend.x, boyfriend.y = 460, 423

        stageImages[4].x, stageImages[4].y = -1000, 250
		stageImages[5].x, stageImages[5].y = 1000, 250
		stageImages[3].x, stageImages[3].y = -670, 250

        fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        enemy.sizeX = -1
    end,

    load = function()

    end,

    update = function(self, dt)
        for i = 3, 11 do
            stageImages[i]:update(dt)
        end
        picoSpeaker:update(dt)
    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

        stageImages[1]:draw()
        stageImages[3]:draw()
        stageImages[4]:draw()
        stageImages[5]:draw()
        stageImages[2]:draw()
        if song ~= 3 then
            girlfriend:draw()
        else
            picoSpeaker:draw()
        end
    love.graphics.pop()
    love.graphics.push()
        love.graphics.translate(cam.x, cam.y)

        enemy:draw()
        boyfriend:draw()
        for i = 6, 11 do
            stageImages[i]:draw()
        end
    love.graphics.pop()
    love.graphics.push()
        love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

    love.graphics.pop()
    end,

    leave = function()
        for i = 1, #stageImages do
            stageImages[i] = nil
        end
    end
}