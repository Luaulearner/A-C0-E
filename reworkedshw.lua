--[[
 • Added Mobile Support.
 • Gamepass Guns Soon!
 • New Stuffs
]]
if game.PlaceId == 386327051 then
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Beta-2 First Generation S.H.W",
   Icon = "code-xml", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Welcome To Beta-2 First Generation S.H.W.",
   LoadingSubtitle = "Thanks to, @hallowdark0 on discord, and his user Contrsution, on roblox.",
   Theme = "Defualt", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "q3mRQZW9Hn", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Beta-2 First Generation S.H.W Key_System",
      Subtitle = "Enter Your Key.",
      Note = "You must join the discord, and dm hallowdark0 for the key, every key is unique.", -- Use this to tell the user how to get a key
      FileName = "file_key_b2fgs.h.wk_s", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/DaUDNwyf"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

--//MainSection/MainTab
local MainTab = Window:CreateTab("Home", "house")
local MainSection = MainTab:CreateSection("b2fg.boosts")


local Paragraph = MainTab:CreateParagraph({Title = "How do these things work?", Content = "for b2fg.map you must be in the map not in the lobby, for example bulgarian spawn or maybe even combine spawn, any spawn as long as you are in the map, and for lobby well.. its pretty self explanatory, and i recommend when using b2fg boosts, also do b2fg nv, so atleast you coould see shit."})



local Button = MainTab:CreateButton({
   Name = "b2fg.map",
   Callback = function()
      for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})


local Button = MainTab:CreateButton({
   Name = "b2fg.lobby",
   Callback = function()
      for _, v in pairs(workspace.Lobby:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})

--//NVTab

local NVTab = Window:CreateTab("Lighting", "sun")
local NVSection = NVTab:CreateSection("b2fg.nv")



local Button = NVTab:CreateButton({
   Name = "b2fg.brightness",
   Callback = function()
      game.Lighting.Brightness = 10
   end,
})


local Button = NVTab:CreateButton({
   Name = "b2fg.ambientbrightness",
   Callback = function()
      game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
   end,
})
end