--// Brand New Reworked Version!
--// Mobile Support!

if game.PlaceId == 386327051 then
  local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
  local Window = Rayfield:CreateWindow({
   Name = "Revamped Beta-1 S.H.W",
   Icon = "bug-play", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "The Seven Hour War Is Not Over, Fix It.. Player.",
   LoadingSubtitle = "by hallowdark0 on discord!, and Contrsution on roblox!",
   Theme = "Serenity", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "2d5SXsCVch", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Input Your Key Here..",
      Subtitle = "hello! sorry for having a key, its just so it prevents spam, and also.. uh.. and etc. btw key resets every week.",
      Note = "._getkey_.fromdiscordserv", -- Use this to tell the user how to get a key
      FileName = "bapibopbdkxk", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"-54775443798066.921875"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-------// MainTab

local MainTab = Window:CreateTab("Home", "app-window") -- Title, Image
local MainSection = MainTab:CreateSection("place.functions")


local Paragraph = MainTab:CreateParagraph({Title = "Information", Content = "Self-Made, If you're wondering why game_boost, won't work? go to any spawn and make sure you're in the map, and not in the lobby and click game_boost then tadaa! you have got yourself an fps boost, its still playable, keep in mind, this is in a work in progress, expect bugs and errors."})
local Button = MainTab:CreateButton({
   Name = "game_boost",
   Callback = function()
   for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})


local Button = MainTab:CreateButton({
   Name = "lobby_boost",
   Callback = function()
   for _, v in pairs(workspace.Lobby:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})


local Button = MainTab:CreateButton({
   Name = "clear_cache",
   Callback = function()
   workspace.Cache:Destroy()
   workspace.MapScripts:Destroy()
   workspace.Scripts:Destroy()
   workspace.ImpactsCache:Destroy()
   workspace.AmmoBoxes:Destroy()
   workspace.AnimatedMorphs:Destroy()
   end,
})



local FirstTab = Window:CreateTab("NV.universal", "circle-user-round") -- Title, Image
local FirstSection = FirstTab:CreateSection("nv.functions")


local Toggle = FirstTab:CreateToggle({
   Name = "brightness.control.tnf",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(vlue)
      if vlue == true then
        game.Lighting.Brightness = 9
        else
          game.Lighting.Brightness = 1
      end
   end,
})


local Slider = FirstTab:CreateSlider({
   Name = "fog.end.control.sld",
   Range = {0, 100000},
   Increment = 1,
   Suffix = "FogEnd",
   CurrentValue = 500,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Lighting.FogEnd = Value
   end,
})


local SecondTab = Window:CreateTab("plrLocal.self.game", "hammer") -- Title, Image
local SecondSection = SecondTab:CreateSection(".functions.")


local Dropdown = SecondTab:CreateDropdown({
   Name = "Gamepass Guns",
   Options = {"Ballistic Shield","AK-47", "OSR", "Desert Eagle", "Dual USPs", "Dual G17s", "M249", "AR3", "PKM", "SVD Dragunov", "SOBT Shield", "Laser Tripmine", "Strecher", "Crowbar", "Saiga-12K", "Colt Python Elite", "HK23", "M40A1", "M21", "Crossbow", "AR2 Alt Fire", "MP5K", "XM29 O.I.C.W", "PP-19 KEDR", "M870", "G36", "G36-SD", "P220", "MP-443 Grach", "M1014", "M240", "Medicine Injector", "Folded Turret", "Blow Torch", "OTs-14 Groza"},
   CurrentOption = {"Option 1"},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
      local args = {
    [1] = Options
}

game:GetService("ReplicatedStorage").LoadoutGP:FireServer(unpack(args))
   end,
})



local Input = SecondTab:CreateInput({
   Name = "tp.player.toplayer",
   CurrentValue = "",
   PlaceholderText = "Player Username Not Displayname",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(username)
      local otol = game.Workspace.username.HumanoidRootPart
      local ufol = game.Players.LocalPlayer.Character.HumanoidRootPart
      ufol.CFrame = otol.CFrame
   end,
})
end