local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local Mainwindow = library:AddWindow("Home", {
	main_color = Color3.fromRGB(173, 216, 230), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})

local features = Mainwindow:AddTab("Features") -- Name of tab
features:Show() -- shows the tab

features:AddButton("Do Not Press!",function()
	print("why no listennbrother")
end)


features:AddButton("nbe",function()
	print("agin bro?")
end)


features:AddButton("run",function()
	print("breh")
end)