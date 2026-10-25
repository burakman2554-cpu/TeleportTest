Teleport.lua
local Players = game:GetService("Players")

local player = Players.LocalPlayer

local function savePosition()
    local character = player.Character
    local root = character
        and character:FindFirstChild("HumanoidRootPart")

    if root then
        return root.CFrame
    end
end

local savedPosition = savePosition()

local function returnToSavedPosition()
    local character = player.Character
    local root = character
        and character:FindFirstChild("HumanoidRootPart")

    if root and savedPosition then
        root.CFrame = savedPosition
    end
end

return {
    SavePosition = function()
        savedPosition = savePosition()
    end,
    ReturnToSavedPosition = returnToSavedPosition
}
