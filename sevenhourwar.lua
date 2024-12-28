local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("S.H.W", "DarkTheme")


--• Main Sector

local Main = Window:NewTab("Home")
local MainSection = Main:NewSection("<•>")

MainSection:NewLabel("LabelText")