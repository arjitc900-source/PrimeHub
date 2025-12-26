--// PRIME'S ADMIN SCRIPT - NO LAG 🧹

for _,v in ipairs(workspace:GetDescendants()) do
    if v:IsA("ParticleEmitter")
    or v:IsA("Trail")
    or v:IsA("Beam")
    or v:IsA("Smoke")
    or v:IsA("Fire") then
        v.Enabled = false
    end
end
