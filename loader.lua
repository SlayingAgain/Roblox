--[[
                                                                                       
888 888                     888       dP"8            dP,e,   d8                                        
888 888  e88 88e   e88 88e  888 ee   C8b Y  e88 88e   8b "   d88   Y8b Y8b Y888P  ,"Y88b 888,8,  ,e e,  
8888888 d888 888b d888 888b 888 P     Y8b  d888 888b 888888 d88888  Y8b Y8b Y8P  "8" 888 888 "  d88 88b 
888 888 Y888 888P Y888 888P 888 b    b Y8D Y888 888P  888    888     Y8b Y8b "   ,ee 888 888    888   , 
888 888  "88 88"   "88 88"  888 8b   8edP   "88 88"   888    888      YP  Y8P    "88 888 888     "YeeP"                                    
                                                                                                                                                                                                
]]

local Players = game:GetService("Players")

local Games = {
    [98629859043211] = "https://raw.githubusercontent.com/SlayingAgain/Roblox/refs/heads/main/Games/MEG%20Endless%20Reality/Main.lua",
    [93978595733734] = "https://raw.githubusercontent.com/SlayingAgain/Roblox/refs/heads/main/Games/Violence%20District/Main.lua"
}

local function loadScript(url)
    local success, content = pcall(function()
        return game:HttpGet(url)
    end)
    if success then
        local func = loadstring(content)
        if func then
            pcall(func)
        end
    end
end

local player = Players.LocalPlayer
repeat task.wait() until player and player.Character
repeat task.wait() until player.Character:FindFirstChild("HumanoidRootPart")

local placeId = game.PlaceId
if Games[placeId] then
    loadScript(Games[placeId])
end
