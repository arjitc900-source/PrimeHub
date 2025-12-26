--// PRIME'S ADMIN SCRIPT - SHOW HITBOX 🔴

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

_G.PrimeHitbox = not _G.PrimeHitbox

for _,v in ipairs(char:GetDescendants()) do
    if v:IsA("BasePart") then
        if v:FindFirstChild("PrimeHitbox") then
            v.PrimeHitbox:Destroy()
        end

        if _G.PrimeHitbox then
            local box = Instance.new("BoxHandleAdornment")
            box.Name = "PrimeHitbox"
            box.Adornee = v
            box.Size = v.Size
            box.Color3 = Color3.fromRGB(255,0,0)
            box.Transparency = 0.5
            box.AlwaysOnTop = true
            box.Parent = v
        end
    end
end
