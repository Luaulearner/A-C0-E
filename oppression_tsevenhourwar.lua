---[O]---[P]---[S]---
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local window = library:AddWindow("Alpha-9 Third Gen", {
	main_color = Color3.fromRGB(0, 0, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})


local features = window:AddTab("Home Sweet Home.") -- Name of tab
features:Show() -- shows the tab


features:AddButton("Bai bai Map.",function()
	for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
end)


features:AddButton("Bai bai Lobby",function()
	for _, v in pairs(workspace.Lobby:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
end)


features:AddButton("Bai bai Props",function()
  for _, v in pairs(workspace.MapScripts.Props:GetChildren()) do
    v:Destroy()
  end
end)

features:AddButton("All Smooth Plastic",function()
	for _, v in pairs(workspace.Map:GetDescendants()) do
	  if v:IsA("BasePart") or v:IsA("Part") then
	    v.Material = "SmoothPlastic"
	  end
	end
end)

features:AddButton("So Bright!",function()
	game.Lighting.Brightness = 17
end)

features:AddButton("Ooh, Sunny Ambient.",function()
	game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
end)

local features = window:AddTab("Advanced") -- Name of tab
features:Show() -- shows the tab


features:AddTextBox("Any Gun GP.", function(text) -- u can add any text to "text"
game:GetService("ReplicatedStorage").LoadoutGP:FireServer(text)
end)


features:AddTextBox("Teleport", function(usernameoftheguy) -- u can add any text to "text"
	local a0 = game.Workspace[usernameoftheguy].HumanoidRootPart
	local b0 = game.Players.LocalPlayer.Character.HumanoidRootPart
	b0.CFrame = a0.CFrame
end)


features:AddTextBox("Teleport To Anything", function(modelnameorpart) -- u can add any text to "text"
	local a1 = game.Workspace.Map[modelnameorpart]
	local b1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	b1.CFrame = a1.CFrame
end)


features:AddTextBox("Speed Modifier", function(thespeed) -- u can add any text to "text"
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = thespeed
end)


local switch = features:AddSwitch("loop rconsoleclear()", function(bool)
	 if bool == true then
	   while task.wait(0.1) do
	     rconsoleclear()
	   end
	 end
end)
switch:Set(true)