--// PRIME'S ADMIN SCRIPT - FLY 🛩️

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")

local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

-- remove old fly
if hrp:FindFirstChild("PrimeFly") then
    hrp.PrimeFly:Destroy()
    RunService:UnbindFromRenderStep("PrimeFly")
    return
end

local bv = Instance.new("BodyVelocity")
bv.Name = "PrimeFly"
bv.MaxForce = Vector3.new(1e5,1e5,1e5)
bv.Velocity = Vector3.zero
bv.Parent = hrp

local speed = 60

RunService:BindToRenderStep("PrimeFly", 0, function()
    local cam = workspace.CurrentCamera
    local dir = Vector3.zero

    if UIS:IsKeyDown(Enum.KeyCode.W) then dir += cam.CFrame.LookVector end
    if UIS:IsKeyDown(Enum.KeyCode.S) then dir -= cam.CFrame.LookVector end
    if UIS:IsKeyDown(Enum.KeyCode.A) then dir -= cam.CFrame.RightVector end
    if UIS:IsKeyDown(Enum.KeyCode.D) then dir += cam.CFrame.RightVector end
    if UIS:IsKeyDown(Enum.KeyCode.Space) then dir += Vector3.new(0,1,0) end
    if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then dir -= Vector3.new(0,1,0) end

    if dir.Magnitude > 0 then
        bv.Velocity = dir.Unit * speed
    else
        bv.Velocity = Vector3.zero
    end
end)
