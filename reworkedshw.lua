--// Brand New Reworked Version!
--// Mobile Support!

if game.PlaceId == 386327051 then
  local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
  local Window = Rayfield:CreateWindow({
   Name = "Revamped Beta-1 S.H.W",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "The Seven Hour War Is Not Over, Fix It.. Player.",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Your Own Private Key",
      Subtitle = ">",
      Note = "Do Math, : 75 * 99 ÷ 78 * 19384992 - 54777289100190", -- Use this to tell the user how to get a key
      FileName = "bapibopbdkxk", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"-54775443798066.921875"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = Window:CreateTab("Home", "app-window") -- Title, Image
local MainSection = MainTab:CreateSection("Place.Function")


local Paragraph = MainTab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"})