local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local nonglobalplayername = game.Players.LocalPlayer
--// RayField menu
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
      Key = {"pstb.com88_-665738827466290193847281919192938484757382919293747472819294747472829194747573728195958484747363636251515252636374748585969696070707966958554474637373625524253536474758586969707076060696969696958855584744747373636363636363626262626262626262525252424225536374747488596669991849999199387747281736382746284628478264625171829405037271514152748596060382817615152738499505038272716618393950504837271728394040382818374%2024B2FGSHWKEY"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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
end