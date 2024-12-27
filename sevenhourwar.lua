for _, v in pairs(workspace.Map:GetDescendants()) do
if v:IsA("Decal") or v:IsA("Texture") or v:IsA("Mesh") or v:IsA("SpecialMesh") then
task.wait(1)
v:Destroy()
end
end
task.wait(1)
game.Lighting.Brightness = 3
game.Lighting.FogEnd = math.huge
game.Lighting.Ambient = Color3.new(255, 255, 255)
game.Lighting.Storm:Destroy()
for _, yes in pairs(workspace.AmmoBoxes:GetChildren()) do
yes:Destroy()
end
for _, nin in pairs(workspace.AnimatedMorphs:GetChildren()) do
nin:Destroy()
end
task.wait(1)
workspace.Cache:Destroy()
workspace.ImpactsCache:Destroy()
for _, no in pairs(game.Workspace:GetChildren()) do
if no.Name == "Sign" then
no:Destroy()
end
end