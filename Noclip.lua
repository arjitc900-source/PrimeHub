--// PRIME'S ADMIN SCRIPT - NOCLIP 🚫

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

_G.PrimeNoclip = not _G.PrimeNoclip

if _G.PrimeNoclip then
    _G.PrimeNoclipConn = RunService.Stepped:Connect(function()
        for _,v in ipairs(char:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
else
    if _G.PrimeNoclipConn then
        _G.PrimeNoclipConn:Disconnect()
    end
end
