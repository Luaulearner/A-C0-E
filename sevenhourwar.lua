local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("S.H.W", "DarkTheme")


--• Main Sector

local Main = Window:NewTab("Home")
local MainSection = Main:NewSection("<•>")

MainSection:NewLabel("This Script Is Specifically Made For Seven Hour War, So.. If the game isnt S.H.W then.. it wont work, so yeah also reminder to not spam click all of it, btw if needed only click twice.")
MainSection:NewButton("Map_UltraBoost", "Basically Removes All Unnesscary parts to reduce lag, this could not work in the first click so please click it twice, and you need to also be in the map btw.", function()
    for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart")
end)