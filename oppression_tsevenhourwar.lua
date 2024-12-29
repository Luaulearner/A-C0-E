--[[
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local nonglobalplayername = game.Players.LocalPlayer
--// RayField menu
print("debug")
if game.PlaceId == 386327051 then
local Window = Rayfield:CreateWindow({
   Name = "BETA-8 Second Generation Oppression",
   Icon = "code-xml", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Greetings, ", nonglobalplayername.Name,
   LoadingSubtitle = "via. u0su.",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "b8as", -- Create a custom folder for your hub/game
      FileName = "b8sg"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "",
      Subtitle = "",
      Note = "Reminder, the key is in the discord server, which is https://discord.gg/q3mRQZW9Hn", -- Use this to tell the user how to get a key
      FileName = "advancedbeta8keysystem", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"pstb.com88_-665738827466290193847281919192938484757382919293747472819294747472829194747573728195958484747363636251515252636374748585969696070707966958554474637373625524253536474758586969707076060696969696958855584744747373636363636363626262626262626262525252424225536374747488596669991849999199387747281736382746284628478264625171829405037271514152748596060382817615152738499505038272716618393950504837271728394040382818374%2024B2FGSHWKEY", "debug24123123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = Window:CreateTab("<•> Home", "settings")
local MainSection = MainTab:CreateSection("Dashboard")


Rayfield:Notify({
   Title = "Thank you.",
   Content = "Thank you very much, for using this script i have worked hard and day and night, stayed up all night just to make this, just for you guys, enjoy the script.",
   Duration = 10,
   Image = "shield-alert",
})


local Label = MainTab:CreateLabel("Welcome To The Dashboard.", "layout-dashboard")
local Paragraph = MainTab:CreateParagraph({Title = "How to use it?", Content = "To use this amazing dashboard, you must first learn common sense, and learn that whenever it says _map it means the map and depending on the topic the map will be changed depending on it, and everything else is self explanatory, if you still dont know what to do, look up BETA-8 Second Gen Tutorial, on youtube."})


local Button = MainTab:CreateButton({
   Name = "freelag_map",
   Callback = function()
      for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})


local Button = MainTab:CreateButton({
   Name = "freelag_lobby",
   Callback = function()
      for _, v in pairs(workspace.Lobby:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})


local Slider = MainTab:CreateSlider({
   Name = "SpeedSlider",
   Range = {0, 1000},
   Increment = 20,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "speedofliter", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})


local Slider = MainTab:CreateSlider({
   Name = "JumpSlider",
   Range = {0, 1000},
   Increment = 10,
   Suffix = "JumpHeight",
   CurrentValue = 10,
   Flag = "jumpslidedfr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(vla)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = vla
   end,
})


local SecTab = Window:CreateTab("<•> Advanced", "app-window")
local SecSection = SecTab:CreateSection("PlayerBoard")


local Label = SecTab:CreateLabel("Welcome To The PlayerBoard", "user-round-cog")
local Paragraph = SecTab:CreateParagraph({Title = "How to use it?", Content = "self explanatory, you could easily figure it out, without needing any support or tutorial at all."})


local Button = SecTab:CreateButton({
   Name = "lighting_bright",
   Callback = function()
      game.Lighting.Brightness = 12
   end,
})


local Button = SecTab:CreateButton({
   Name = "lighting_ambient_bright",
   Callback = function()
      game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
   end,
})


local Input = SecTab:CreateInput({
   Name = "Teleportation",
   CurrentValue = "",
   PlaceholderText = "Enter Username",
   RemoveTextAfterFocusLost = true,
   Flag = "epictp",
   Callback = function(usernameoftheguy)
      local tpto = game.Workspace[usernameoftheguy].HumanoidRootPart
      local youbro = game.Players.LocalPlayer.Character.HumanoidRootPart
      youbro.CFrame = tpto.CFrame
   end,
})



local CombineTab = Window:CreateTab("<•> Combine Machinery", "circle-user-round")
local CombineSection = CombineTab:CreateSection("Combine Guns")

local Label = CombineTab:CreateLabel("Combine Machinery", "circle-user-round")

local Button = CombineTab:CreateButton({
   Name = "AR2 Alt Fire",
   Callback = function()
      local args = {
    [1] = "AR2 Alt Fire"
}

game:GetService("ReplicatedStorage").LoadoutGP:FireServer(unpack(args))
   end,
})


local Button = CombineTab:CreateButton({
   Name = "OSR",
   Callback = function()
      local args = {
    [1] = "OSR"
}

game:GetService("ReplicatedStorage").LoadoutGP:FireServer(unpack(args))
   end,
})


local Button = CombineTab:CreateButton({
   Name = "SOBT Shield (Close to Civil Shield)",
   Callback = function()
      local args = {
    [1] = "SOBT Shield"
}

game:GetService("ReplicatedStorage").LoadoutGP:FireServer(unpack(args))
   end,
})


local Button = CombineTab:CreateButton({
   Name = "AR3",
   Callback = function()
      local args = {
    [1] = "AR3"
}

game:GetService("ReplicatedStorage").LoadoutGP:FireServer(unpack(args))
   end,
})
end
]]

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local window = library:AddWindow("Post-War Combine", {
	main_color = Color3.fromRGB(0, 0, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})

local features = window:AddTab("combine elite niggas") -- Name of tab
features:Show() -- shows the tab

features:AddButton("goodbye map and hello fps boost",function()
	for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
end)


features:AddButton("bye lobby and hi fps boost", function()
  for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
  end
end)

features:AddTextBox("any gamepass ur shitty ass want gun", function(text) -- u can add any text to "text"
game:GetService("ReplicatedStorage").LoadoutGP:FireServer(text)
end)



features:AddButton("be bright asf",function()
	game.Lighting.Brightness = 15
end)



features:AddButton("fuckjng niggaa..",function()
	game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
end)


features:AddTextBox("tp to anyone real bilat", function(usernameoftheguy) -- u can add any text to "text"
	local tpto = game.Workspace[usernameoftheguy].HumanoidRootPart
      local youbro = game.Players.LocalPlayer.Character.HumanoidRootPart
      youbro.CFrame = tpto.CFrame
end)