---[O]---[P]---[S]---
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local window = library:AddWindow("Alpha-9 Third Gen", {
	main_color = Color3.fromRGB(0, 0, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})


local features = window:AddTab("Home Sweet Home.") -- Name of tab
features:Show() -- shows the tab


features:AddButton("name",function()
	-- Code here
end)


features:AddButton("name",function()
	-- Code here
end)