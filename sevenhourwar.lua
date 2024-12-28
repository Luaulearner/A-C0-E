local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("S.H.W", "DarkTheme")


--• Main Sector

local Main = Window:NewTab("Home")
local MainSection = Main:NewSection("<•>")

MainSection:NewLabel("This Script Is Specifically Made For Seven Hour War, So.. If the game isnt S.H.W then.. it wont work, so yeah also reminder to not spam click all of it, btw if needed only click twice.")
MainSection:NewButton("Map_UltraBoost", "Basically Removes All Unnesscary parts to reduce lag, this could not work in the first click so please click it twice, and you need to also be in the map btw.", function()
    for _, v in pairs(workspace.Map:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("Texture") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
      end
    end
end)


MainSection:NewTextBox("Teleport To", "basically teleports you to people, useful for getting into rps or if ur lost xd btw you need to use the players username not display!!", function(txt)
	local tpto = game.Workspace.txt.HumanoidRootPart
	local self = game.Players.LocalPlayer.Character.HumanoidRootPart
	self.CFrame = tpto.CFrame
end)


MainSection:NewTextBox("SetWalkSpeed", "This should support mobile and pc, for speed ;)", function(speedpower)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedpower
end)


MainSection:NewDropdown("Gamepass Guns", "if you dont see ur wanted gun add me on discord! hallowdark0", {"Ballistic Shield", "OSR", "AK-47", "M249", "Desert Eagle", "AR3", "SOBT Shield", "Dual USPs", "Dual Glocks"}, function(currentOption)
    local args = {
    [1] = currentOption
}

game:GetService("ReplicatedStorage").LoadoutGP:FireServer(unpack(args))
end)

local NonMain = Window:NewTab("!")