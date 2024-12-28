local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local Mainwindow = library:AddWindow("One-1 S.H.W", {
	main_color = Color3.fromRGB(0, 0, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})

local features = Mainwindow:AddTab("🛠 Home ") -- Name of tab
features:Show() -- shows the tab

features:AddButton("._.",function()
	for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
end)


features:AddButton("•_•",function()
	for _, v in pairs(workspace.Lobby:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
end)


local features = Mainwindow:AddTab("LocalPlayer") -- Name of tab
features:Show() -- shows the tab


features:AddButton("-_-",function()
	game.Lighting.Brightness = 9
	game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
end)