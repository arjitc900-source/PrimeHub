--// PRIME'S ADMIN SCRIPT - GOD MODE 🛡️

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

if hum.MaxHealth > 100000 then
    hum.MaxHealth = 100
    hum.Health = 100
else
    hum.MaxHealth = math.huge
    hum.Health = math.huge
end
