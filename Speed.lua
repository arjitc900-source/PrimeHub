--// PRIME'S ADMIN SCRIPT - SPEED 🏃

local plr = game.Players.LocalPlayer
local hum = plr.Character or plr.CharacterAdded:Wait()
hum = hum:WaitForChild("Humanoid")

hum.WalkSpeed = hum.WalkSpeed == 16 and 50 or 16
