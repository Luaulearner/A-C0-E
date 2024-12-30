--// To Reduce Even More Lag, This Is will be only Script And No Guis!
--||Looping thru the whole game
task.wait(0.1)
settings().Rendering.QualityLevel = "Level01"
game.Lighting.GlobalShadows = false
for _, shadowsoflight in pairs(game:GetDescendants()) do
  if shadowsoflight:IsA("SurfaceLight") or shadowsoflight:IsA("PointLight") or shadowsoflight:IsA("SpotLight") then
    shadowsoflight.Shadows = false
  end
end
task.wait(0.2)
for _, decals in pairs(game:GetDescendants()) do
  if decals:IsA("Decal") or decals:IsA("Texture") then
    decals.Transparency = 1
  end
end
task.wait(0.3)
