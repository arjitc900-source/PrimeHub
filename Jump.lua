--// PRIME'S ADMIN SCRIPT - JUMP 🦘

local plr = game.Players.LocalPlayer
local hum = plr.Character or plr.CharacterAdded:Wait()
hum = hum:WaitForChild("Humanoid")

hum.JumpPower = hum.JumpPower == 50 and 120 or 50
