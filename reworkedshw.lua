local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local b3fgplr = game.Players.LocalPlayer

local setclipboardto = "https://discord.gg/q3mRQZW9Hn"
if b3fgplr.Name == "Contrsution" then
  print("Welcome Owner.")
  else
setclipboard(setclipboardto)
end


if game.PlaceId == 386327051 then
local Window = Rayfield:CreateWindow({
   Name = "BETA-3 First Generation",
   Icon = "code-xml", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Welcome", b3fgplr.Name, " . .",
   LoadingSubtitle = "Made by : @u0su.",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "bigman", -- Create a custom folder for your hub/game
      FileName = "configbtw"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "KS-1",
      Subtitle = "Checkpoint.",
      Note = "Get your key on the discord server, that auto copies already.", -- Use this to tell the user how to get a key
      FileName = "KS-1Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/DaUDNwyf"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = Window:CreateTab("Home", "house") -- Title, Image
local MainSection = MainTab:CreateSection("b3fg.boosts")


local Button = MainTab:CreateButton({
   Name = "b3fg.map",
   Callback = function()
      for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})


local Button = MainTab:CreateButton({
   Name = "b3fg.lobby",
   Callback = function()
      for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
   end,
})
end