--#gitanimalsim.lua,

local ganisim = 2023680558

if tostring(game.GameId) == ganisim then
 while task.wait() do
game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
setfpscap(999)
local args = {
    [1] = "SSSSSSSS6"
}

game:GetService("ReplicatedStorage").Events.WeaponEvent:FireServer(unpack(args))
local args = {
    [1] = "halloween2023",
    [2] = "crocodile",
    [3] = "crocodileAnim"
}

game:GetService("ReplicatedStorage").Events.SpawnEvent:FireServer(unpack(args))
local args = {
    [1] = {
        ["clanToCreate"] = "Unnamed Script Clan 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥💣💣💣💣💣💣💣💣💣💣💣🕳️💥💥💥💥💥💥💥💥💥💥💥💥💥🔥🔥🔥🔥🔥🔥🔥✨✨✨🔥🔥🔥🔥🔥🔥🔥🔥",
        ["action"] = "create_clan",
        ["ClanIcon"] = ""
    }
}
game:GetService("ReplicatedStorage").Events.ClanEvent:FireServer(unpack(args))
end
else
 warn("Game Not Supported")
end