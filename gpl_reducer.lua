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
    decals.Shiny = 1
  end
end
task.wait(0.3)
for _, parts in pairs(game:GetDescendants()) do
  if parts:IsA("BasePart") or parts:IsA("Union") or parts:IsA("Part") then
    parts.Reflectance = 0
    parts.Material = "SmoothPlastic"
  end
end
task.wait(0.4)
for _, meshs in pairs(game:GetDescendants()) do
  if meshs:IsA("DataModelMesh") or meshs:IsA("SpecialMesh") or meshs:IsA("Mesh") then
    meshs.MeshId = ""
  end
end
task.wait(0.5)
for _, models in pairs(game:GetDescendants()) do
  if models:IsA("Model") or models:IsA("Models") then
    models.LevelOfDetail = 1
  end
end