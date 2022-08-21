-- For a later update
local dirTable
return {
    loadMods = function(self)
        if not love.filesystem.getInfo("mods", "directory") then
            love.filesystem.createDirectory("mods")
        end
        dirTable = love.filesystem.getDirectoryItems("mods")
        for i = 1, #dirTable do
            mods[i] = require("mods." .. dirTable[i] .. ".meta")
            mods[i]:setWeek()
            mods[i]:setStage()
            mods[i]:setWeekMeta()
            --print(mods.weekMeta[1])
        end
    end
}
