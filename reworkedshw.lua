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
end