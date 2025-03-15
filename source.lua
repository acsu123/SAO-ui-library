local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local coregui = game.CoreGui or plr:WaitForChild("PlayerGui")

if coregui:FindFirstChild("LinkStart") then
	coregui:FindFirstChild("LinkStart"):Destroy()
end
if coregui:FindFirstChild("SAO_GUI") then
	coregui:FindFirstChild("SAO_GUI"):Destroy()
end

local ContentProvider = game:GetService("ContentProvider")
local success, err = pcall(function()
    ContentProvider:PreloadAsync({
		"rbxassetid://1022962506",
		"rbxassetid://1022953222",
		"rbxassetid://1370292592",
		"rbxassetid://234370699",
		"rbxassetid://234370725",
		"rbxassetid://234369782",
		"rbxassetid://296748591",
		"http://www.roblox.com/asset/?id=231862344",
		"http://www.roblox.com/asset/?id=231182937"
	})
end)

local PresetColor = Color3.fromRGB(66, 134, 255)
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CloseBind = Enum.KeyCode.RightControl

local SAO = {}

function SAO:Intro()
	local Intro_Tab = {}
	local DoneIntro = false
	function Intro_Tab:Done()
		return DoneIntro
	end
	local function AnimateText(label, Text)
		for i = 1, #Text, 1 do
			label.Text = string.sub(Text, 1, i)
			wait(0.03)
		end
	end
	local LinkStart = Instance.new("ScreenGui")
	local Thing = Instance.new("ViewportFrame")

	LinkStart.Name = "LinkStart"
	LinkStart.Parent = coregui
	LinkStart.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	LinkStart.IgnoreGuiInset = true

	Thing.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Thing.Name = "Thing"
	Thing.Size = UDim2.new(1, 0,1, 0)
	Thing.Position = UDim2.new(0, 0,0, 0)
	Thing.Parent = LinkStart

	local World = Thing
	local cam = Instance.new("Camera",script.Parent)

	local mid_part = Instance.new("Part")
	mid_part.Transparency = 1
	mid_part.Anchored = true
	mid_part.Name = "Mid"
	mid_part.Parent = World

	World.CurrentCamera = cam
	cam.CFrame = mid_part.CFrame

	TweenService:Create(World,TweenInfo.new(0.5),{
		BackgroundColor3 = Color3.new(1, 1, 1)
	}):Play()

	wait(1)

	local function make_go()
		local cl_part = Instance.new("Part")
		cl_part.Transparency = 0
		cl_part.Material = Enum.Material.SmoothPlastic
		cl_part.Anchored = true
		cl_part.BrickColor = BrickColor.random()
		cl_part.CFrame = mid_part.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),-math.random(60,80))
		cl_part.Size = Vector3.new(1, 1, math.random(9,20))
		cl_part.Parent = World
		TweenService:Create(cl_part,TweenInfo.new(0.5),{
			CFrame = cl_part.CFrame * CFrame.new(0,0,130)
		}):Play()
		game.Debris:AddItem(cl_part,1)
	end
	make_go()
	for i = 1, 40 do
		for i = 1, 12 do
			make_go()
		end
		wait()
	end

	wait(0.6)

	local function create_ring()
		local RoundRing = Instance.new("ImageLabel")
		RoundRing.Name = "RoundRing"
		RoundRing.Parent = World
		RoundRing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		RoundRing.BackgroundTransparency = 1.000
		RoundRing.BorderSizePixel = 0
		RoundRing.Position = UDim2.new(0.427655667, 0, 0.374803185, 0)
		RoundRing.Size = UDim2.new(0.144688651, 0, 0.24724409, 0)
		RoundRing.Image = "rbxassetid://1022962506"
		RoundRing.ZIndex = 2
		return RoundRing
	end

	local ring1 = create_ring()
	local ring2 = create_ring()
	TweenService:Create(ring1,TweenInfo.new(0.5),{
		Position = UDim2.new(-0.172, 0,-0.082, 0),
		Size = UDim2.new(0.851, 0,1.454, 0)
	}):Play()
	TweenService:Create(ring2,TweenInfo.new(0.5),{
		Position = UDim2.new(0.326, 0,-0.313, 0),
		Size = UDim2.new(0.851, 0,1.454, 0)
	}):Play()
	delay(0.5,function()
		wait(0.2)
		TweenService:Create(ring1,TweenInfo.new(0.5),{
			Position = UDim2.new(0.848, 0,0.009, 0),
			Size = UDim2.new(0.145, 0,0.247, 0)
		}):Play()
		TweenService:Create(ring2,TweenInfo.new(0.5),{
			Position = UDim2.new(0.848, 0,0.165, 0),
			Size = UDim2.new(0.145, 0,0.247, 0)
		}):Play()
	end)
	wait(0.4)
	local ring3 = create_ring()
	TweenService:Create(ring3,TweenInfo.new(0.5),{
		Position = UDim2.new(-0.331, 0,0.253, 0),
		Size = UDim2.new(0.851, 0,1.454, 0)
	}):Play()
	delay(0.5,function()
		wait(0.2)
		TweenService:Create(ring3,TweenInfo.new(0.5),{
			Position = UDim2.new(0.848, 0,0.315, 0),
			Size = UDim2.new(0.145, 0,0.247, 0)
		}):Play()
	end)
	wait(0.4)
	local ring4 = create_ring()
	TweenService:Create(ring4,TweenInfo.new(0.5),{
		Position = UDim2.new(0.018, 0,-0.325, 0),
		Size = UDim2.new(0.851, 0,1.454, 0)
	}):Play()
	delay(0.5,function()
		wait(0.2)
		TweenService:Create(ring4,TweenInfo.new(0.5),{
			Position = UDim2.new(0.848, 0,0.46, 0),
			Size = UDim2.new(0.145, 0,0.247, 0)
		}):Play()
	end)
	wait(0.4)
	local ring5 = create_ring()
	TweenService:Create(ring5,TweenInfo.new(0.5),{
		Position = UDim2.new(0.404, 0,-0.013, 0),
		Size = UDim2.new(0.851, 0,1.454, 0)
	}):Play()
	delay(0.5,function()
		wait(0.2)
		TweenService:Create(ring5,TweenInfo.new(0.5),{
			Position = UDim2.new(0.848, 0,0.613, 0),
			Size = UDim2.new(0.145, 0,0.247, 0)
		}):Play()
	end)

	wait(1.2)
	ring1.ImageColor3 = Color3.new(0, 1, 0.498039)
	ring2.ImageColor3 = Color3.new(0, 1, 0.498039)
	ring3.ImageColor3 = Color3.new(0, 1, 0.498039)
	ring4.ImageColor3 = Color3.new(0, 1, 0.498039)
	ring5.ImageColor3 = Color3.new(0, 1, 0.498039)
	wait(0.3)
	TweenService:Create(ring1,TweenInfo.new(0.5),{
		Position = UDim2.new(-0.5, 0,0.009, 0),
	}):Play()
	TweenService:Create(ring3,TweenInfo.new(0.5),{
		Position = UDim2.new(-0.5, 0,0.315, 0),
	}):Play()
	TweenService:Create(ring5,TweenInfo.new(0.5),{
		Position = UDim2.new(-0.5, 0,0.613, 0),
	}):Play()

	TweenService:Create(ring2,TweenInfo.new(0.5),{
		Position = UDim2.new(1.4, 0,0.165, 0),
	}):Play()
	TweenService:Create(ring4,TweenInfo.new(0.5),{
		Position = UDim2.new(1.4, 0,0.46, 0),
	}):Play()

	game.Debris:AddItem(ring1,0.5)
	game.Debris:AddItem(ring2,0.5)
	game.Debris:AddItem(ring3,0.5)
	game.Debris:AddItem(ring4,0.5)
	game.Debris:AddItem(ring5,0.5)
	wait(0.5)

	local LogInpage = Instance.new("ImageLabel")
	local password = Instance.new("TextLabel")
	local username = Instance.new("TextLabel")

	LogInpage.Name = "LogInpage"
	LogInpage.Parent = World
	LogInpage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogInpage.BackgroundTransparency = 1.000
	LogInpage.Position = UDim2.new(0.179799423, 0, 0.11182519, 0)
	LogInpage.Size = UDim2.new(0.688395441, 0, 0.827763498, 0)
	LogInpage.Image = "rbxassetid://1022953222"

	password.Name = "password"
	password.Parent = LogInpage
	password.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	password.BackgroundTransparency = 1.000
	password.Position = UDim2.new(0.517169595, 0, 0.574534178, 0)
	password.Size = UDim2.new(0.184183136, 0, 0.0372670814, 0)
	password.Font = Enum.Font.SciFi
	password.Text = ""
	password.TextScaled = true
	password.TextSize = 20.000
	password.TextWrapped = true
	password.TextXAlignment = Enum.TextXAlignment.Left

	username.Name = "username"
	username.Parent = LogInpage
	username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	username.BackgroundTransparency = 1.000
	username.Position = UDim2.new(0.516469061, 0, 0.461180121, 0)
	username.Size = UDim2.new(0.184183136, 0, 0.0372670814, 0)
	username.Font = Enum.Font.SciFi
	username.Text = ""
	username.TextScaled = true
	username.TextSize = 20.000
	username.TextWrapped = true
	username.TextXAlignment = Enum.TextXAlignment.Left

	wait(0.5)
	AnimateText(username, "administrator")
	wait(0.3)
	AnimateText(password, "********")
	wait(0.3)

	TweenService:Create(LogInpage,TweenInfo.new(0.5),{
		Position = UDim2.new(2, 0,0.112, 0),
	}):Play()

	wait(0.5)
	local welcome = Instance.new("TextLabel")
	welcome.Name = "welcome"
	welcome.Parent = World
	welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	welcome.BackgroundTransparency = 1.000
	welcome.Position = UDim2.new(0.171230972, 0, 0.28165254, 0)
	welcome.Size = UDim2.new(0.656593561, 0, 0.434117258, 0)
	welcome.Font = Enum.Font.SciFi
	welcome.Text = "Welcome to Sword Art Online Ui Lib!"
	welcome.TextColor3 = Color3.fromRGB(10, 16, 21)
	welcome.TextScaled = true
	welcome.TextSize = 20.000
	welcome.TextTransparency = 1.000
	welcome.TextWrapped = true

	TweenService:Create(welcome,TweenInfo.new(0.5),{
		TextTransparency = 0
	}):Play()
	TweenService:Create(World,TweenInfo.new(0.5),{
		BackgroundColor3 = Color3.fromRGB(173, 173, 173)
	}):Play()
	wait(1.5)
	TweenService:Create(welcome,TweenInfo.new(0.5),{
		TextTransparency = 0.5,
		Size = UDim2.new(1.254, 0,0.829, 0)
	}):Play()
	game.Debris:AddItem(welcome,0.5)
	wait(0.4)
	local function make_go2()
		local cl_part = Instance.new("Part")
		cl_part.Transparency = tonumber("0." .. math.random(0,5))
		cl_part.Material = Enum.Material.Neon
		cl_part.Anchored = true
		cl_part.BrickColor = BrickColor.Blue()
		cl_part.CFrame = mid_part.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),-math.random(60,80))
		cl_part.Size = Vector3.new(1, 1, math.random(9,20))
		cl_part.Parent = World
		TweenService:Create(cl_part,TweenInfo.new(0.5),{
			CFrame = cl_part.CFrame * CFrame.new(0,0,130)
		}):Play()
		game.Debris:AddItem(cl_part,1)
	end
	TweenService:Create(World,TweenInfo.new(1.5),{
		BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	}):Play()
	for i = 1, 70 do
		if i > 20 then
			for i = 1, 10 do
				make_go2()
			end
		elseif i > 30 then
			for i = 1, 20 do
				make_go2()
			end
		else
			for i = 1, 5 do
				make_go2()
			end
		end
		wait()
	end
	TweenService:Create(World,TweenInfo.new(1),{
		BackgroundTransparency = 1
	}):Play()
	game.Debris:AddItem(LinkStart, 1)
	delay(1,function()
		DoneIntro = true
	end)
	return Intro_Tab
end

function SAO:Window(info)
	maincolor = info.Color or Color3.fromRGB(0, 255, 255)
	candrag = info.Drag or false
	
	local function MakeDraggable(topbarobject, object)
		if candrag ~= true then return end
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil
		local function Update(input)
			local Delta = input.Position - DragStart
			local pos =
				UDim2.new(
					StartPosition.X.Scale,
					StartPosition.X.Offset + Delta.X,
					StartPosition.Y.Scale,
					StartPosition.Y.Offset + Delta.Y
				)
			object.Position = pos
		end
		topbarobject.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Dragging = true
					DragStart = input.Position
					StartPosition = object.Position

					input.Changed:Connect(
						function()
							if input.UserInputState == Enum.UserInputState.End then
								Dragging = false
							end
						end
					)
				end
			end
		)
		topbarobject.InputChanged:Connect(
			function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch
				then
					DragInput = input
				end
			end
		)
		UserInputService.InputChanged:Connect(
			function(input)
				if input == DragInput and Dragging then
					Update(input)
				end
			end
		)
	end
	
	local Window_tab = {}
	
	local SAO_GUI = Instance.new("ScreenGui")
	local TabFrame = Instance.new("Frame")
	local TouchZone = Instance.new("Frame")
	
	SAO_GUI.Name = "SAO_GUI"
	SAO_GUI.Parent = coregui
	SAO_GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = SAO_GUI
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0.0245454554, 0, 0.0740157515, 0)
	TabFrame.Size = UDim2.new(0.178181812, 0, 0.823622048, 0)

	TouchZone.Name = "TouchZone"
	TouchZone.Parent = TabFrame
	TouchZone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TouchZone.BackgroundTransparency = 1.000
	TouchZone.Position = UDim2.new(-0.137755111, 0, -0.0898661539, 0)
	TouchZone.Size = UDim2.new(1.13498271, 0, 1.21257854, 0)
	
	local function refresh_all()
		for i,v in pairs(TabFrame:GetChildren()) do
			if v:FindFirstChild("pos") then
				v.ImageColor3 = Color3.fromRGB(255, 255, 255)
				v.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				v.OptionsFRame.Position = UDim2.new(1.555, 0,-1.094, 0)
				v.OptionsFRame.Visible = false
			end
		end
	end
	
	local ui_status = "close"
	local running_ui = false
	local inzone = false
	local holding_touch = false
	TouchZone.MouseEnter:Connect(function()
		inzone = true
	end)
	TouchZone.MouseLeave:Connect(function()
		inzone = false
	end)
	mouse.Button1Down:Connect(function()
		if inzone == true then
			holding_touch = true
		end
	end)
	TouchZone.MouseMoved:Connect(function()
		if holding_touch == true then
			holding_touch = false
			if running_ui == true then return end
			running_ui = true
			if ui_status == "close" then
				ui_status = "open"
				for i,v in pairs(TabFrame:GetChildren()) do
					spawn(function()
						if v:FindFirstChild("pos") then
							v.Visible = true
							TweenService:Create(v, TweenInfo.new(0.5), {
								Position = UDim2.new(0.056,0,v.pos.Value,0)
							}):Play()
						end
					end)
				end
				wait(0.7)
				running_ui = false
			else
				ui_status = "close"
				for i,v in pairs(TabFrame:GetChildren()) do
					spawn(function()
						if v:FindFirstChild("pos") then
							TweenService:Create(v, TweenInfo.new(0.5), {
								Position = UDim2.new(0.056, 0, 0.025, 0)
							}):Play()
							delay(0.5, function()
								v.Visible = false
							end)
						end
					end)
				end
				wait(0.7)
				running_ui = false
			end
		end
	end)
	
	local NumberTab = 0 --0.025 -- + 0.145
	
	function Window_tab:Nof(txt, tg)
		local Nof = Instance.new("ImageLabel")
		local Content = Instance.new("TextLabel")
		local No = Instance.new("ImageButton")
		local Yes = Instance.new("ImageButton")

		Nof.Name = "Nof"
		Nof.Parent = SAO_GUI
		Nof.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Nof.BackgroundTransparency = 1.000
		Nof.Position = UDim2.new(2, 0, 0.718140543, 0)
		Nof.Size = UDim2.new(0.240914643, 0, 0.240914598, 0)
		Nof.Image = "rbxassetid://1370292592"

		Content.Name = "Content"
		Content.Parent = Nof
		Content.BackgroundColor3 = Color3.fromRGB(193, 193, 193)
		Content.BackgroundTransparency = 1.000
		Content.Position = UDim2.new(0.00184929848, 0, 0.281391263, 0)
		Content.Size = UDim2.new(1, 0, 0.32453683, 0)
		Content.ZIndex = 2
		Content.Font = Enum.Font.SourceSansSemibold
		Content.Text = txt
		Content.TextColor3 = Color3.fromRGB(255, 255, 255)
		Content.TextSize = 18.000
		Content.TextStrokeTransparency = 0.900
		Content.TextWrapped = true

		No.Name = "No"
		No.Parent = Nof
		No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		No.BackgroundTransparency = 1.000
		No.Position = UDim2.new(0.734210253, 0, 0.694335222, 0)
		No.Size = UDim2.new(0.135380536, 0, 0.232157737, 0)
		No.ZIndex = 2
		No.Image = "rbxassetid://234370699"

		Yes.Name = "Yes"
		Yes.Parent = Nof
		Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Yes.BackgroundTransparency = 1.000
		Yes.Position = UDim2.new(0.186845779, 0, 0.694335222, 0)
		Yes.Size = UDim2.new(0.135380536, 0, 0.232157737, 0)
		Yes.ZIndex = 2
		Yes.Image = "rbxassetid://234370725"
		
		TweenService:Create(Nof,TweenInfo.new(0.5),{
			Position = UDim2.new(0.732380986, 0, 0.718140543, 0)
		}):Play()
		wait(0.5)
		
		local function disNof()
			pcall(function()
				TweenService:Create(Nof,TweenInfo.new(0.5),{
					Position = UDim2.new(2, 0, 0.718140543, 0)
				}):Play()
				game.Debris:AddItem(Nof, 0.5)
			end)
		end
		Yes.MouseButton1Click:Connect(function()
			disNof()
		end)
		No.MouseButton1Click:Connect(function()
			disNof()
		end)
		delay(tg or math.huge, function()
			disNof()
		end)
	end
	
	function Window_tab:Tab(txt,img)
		local tab_Tab = {}
		
		if NumberTab == 0 then
			NumberTab = 0.025
		else
			NumberTab = NumberTab + 0.145
		end
		
		local TabButton = Instance.new("ImageButton")
		local Label = Instance.new("TextLabel")

		TabButton.Name = txt
		TabButton.Parent = TabFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Position = UDim2.new(0.056, 0, 0.025, 0)
		TabButton.Size = UDim2.new(0.326530606, 0, 0.122370936, 0)
		TabButton.Image = "rbxassetid://234369782"
		TabButton.Visible = false
		if img then
			TabButton.Image = img
		end

		Label.Name = "Label"
		Label.Parent = TabButton
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.Position = UDim2.new(0.171875119, 0, 0.25, 0)
		Label.Size = UDim2.new(0.640625, 0, 0.5, 0)
		Label.Font = Enum.Font.Code
		Label.Text = txt or "Tab"
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextScaled = true
		Label.TextSize = 14.000
		Label.TextWrapped = true
		
		local WhatMy = Instance.new("NumberValue", TabButton)
		WhatMy.Name = "pos"
		WhatMy.Value = NumberTab
		
		
		local OptionsFRame = Instance.new("ImageLabel")
		local thin2 = Instance.new("ImageLabel")
		local thin = Instance.new("ImageLabel")
		local arrow = Instance.new("ImageLabel")

		OptionsFRame.Name = "OptionsFRame"
		OptionsFRame.Parent = TabButton
		OptionsFRame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		OptionsFRame.BackgroundTransparency = 1.000
		OptionsFRame.Position = UDim2.new(1.55451179, 0, -1.09375, 0)
		OptionsFRame.Size = UDim2.new(3.00222373, 0, 3.18304682, 0)
		OptionsFRame.Image = "rbxassetid://296748591"
		OptionsFRame.Visible = false
		MakeDraggable(OptionsFRame,OptionsFRame)

		thin2.Name = "thin2"
		thin2.Parent = OptionsFRame
		thin2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		thin2.BackgroundTransparency = 1.000
		thin2.Position = UDim2.new(-0.00750394911, 0, 0.499769598, 0)
		thin2.Size = UDim2.new(0.00723898318, 0, 0.460499018, 0)
		thin2.Image = "http://www.roblox.com/asset/?id=231862344"
		thin2.ImageTransparency = 0.300

		thin.Name = "thin"
		thin.Parent = OptionsFRame
		thin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		thin.BackgroundTransparency = 1.000
		thin.Position = UDim2.new(-0.00750394911, 0, 0.03927055, 0)
		thin.Rotation = 180.000
		thin.Size = UDim2.new(0.00723898318, 0, 0.460499018, 0)
		thin.Image = "http://www.roblox.com/asset/?id=231862344"
		thin.ImageTransparency = 0.300

		arrow.Name = "arrow"
		arrow.Parent = OptionsFRame
		arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		arrow.BackgroundTransparency = 1.000
		arrow.Position = UDim2.new(-0.140219212, 0, 0.407669991, 0)
		arrow.Size = UDim2.new(0.132715285, 0, 0.184199631, 0)
		arrow.Image = "http://www.roblox.com/asset/?id=231182937"
		arrow.ImageTransparency = 0.300
		
		local inside = Instance.new("ScrollingFrame")
		local SelectList = Instance.new("UIListLayout")

		inside.Name = "inside"
		inside.Parent = OptionsFRame
		inside.Active = true
		inside.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		inside.BackgroundTransparency = 1.000
		inside.BorderColor3 = Color3.fromRGB(27, 42, 53)
		inside.BorderSizePixel = 0
		inside.Position = UDim2.new(0.0470541641, 0, 0.0687234625, 0)
		inside.Size = UDim2.new(0.9, 0, 0.9, 0)
		inside.ScrollBarThickness = 8

		SelectList.Name = "SelectList"
		SelectList.Parent = inside
		SelectList.SortOrder = Enum.SortOrder.LayoutOrder
		SelectList.Padding = UDim.new(0, 5)
		
		inside.CanvasSize = UDim2.new(0, 0, 0, 30 + SelectList.AbsoluteContentSize.Y)
		SelectList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			inside.CanvasSize = UDim2.new(0, 0, 0, 30 + SelectList.AbsoluteContentSize.Y)
		end)
		
		TabButton.MouseEnter:Connect(function()
			TweenService:Create(TabButton,TweenInfo.new(0.3),{
				ImageColor3 = maincolor
			}):Play()
			TweenService:Create(Label,TweenInfo.new(0.3),{
				TextColor3 = maincolor
			}):Play()
		end)
		TabButton.MouseLeave:Connect(function()
			if OptionsFRame.Visible == false then
				TweenService:Create(TabButton,TweenInfo.new(0.1),{
					ImageColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
				TweenService:Create(Label,TweenInfo.new(0.1),{
					TextColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
			end
		end)
		
		local function refreshSec()
			for i,v in pairs(TabButton:GetChildren()) do
				if v:FindFirstChild("SecFrameScr") then
					v.Position = UDim2.new(5, 0, -1.0940001, 0)
					v.Visible = false
				end
			end
			for i,v in pairs(TabButton.OptionsFRame.inside:GetChildren()) do
				if v:FindFirstChild("UICorner") then
					v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				end
			end
		end
		
		
		local deploy = false
		TabButton.MouseButton1Click:Connect(function()
			refresh_all()
			refreshSec()
			if deploy == false then
				deploy = true
				TabButton.OptionsFRame.Visible = true
				TweenService:Create(TabButton,TweenInfo.new(0.3),{
					ImageColor3 = maincolor
				}):Play()
				TweenService:Create(Label,TweenInfo.new(0.3),{
					TextColor3 = maincolor
				}):Play()
			else
				deploy = false
				TabButton.OptionsFRame.Visible = false
				TweenService:Create(TabButton,TweenInfo.new(0.1),{
					ImageColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
				TweenService:Create(Label,TweenInfo.new(0.1),{
					TextColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
			end			
		end)
		
		function tab_Tab:Section(text_sec)
			local Sec_Tab = {}
			
			local SectionFrame = Instance.new("ImageLabel")
			local secthin2 = Instance.new("ImageLabel")
			local secthin = Instance.new("ImageLabel")
			local secarrow = Instance.new("ImageLabel")
			local SecFrameScr = Instance.new("ScrollingFrame")
			local sectlist = Instance.new("UIListLayout")

			SectionFrame.Name = text_sec.."sec"
			SectionFrame.Parent = TabButton
			SectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionFrame.BackgroundTransparency = 1.000
			SectionFrame.Position = UDim2.new(5, 0, -1.0940001, 0)
			SectionFrame.Size = UDim2.new(3.00222373, 0, 4.51117182, 0)
			SectionFrame.Image = "rbxassetid://296748591"
			SectionFrame.Visible = false
			MakeDraggable(SectionFrame,SectionFrame)

			secthin2.Name = "secthin2"
			secthin2.Parent = SectionFrame
			secthin2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			secthin2.BackgroundTransparency = 1.000
			secthin2.Position = UDim2.new(-0.00750394911, 0, 0.499769598, 0)
			secthin2.Size = UDim2.new(0.00723898318, 0, 0.460499018, 0)
			secthin2.Image = "http://www.roblox.com/asset/?id=231862344"
			secthin2.ImageTransparency = 0.300

			secthin.Name = "secthin"
			secthin.Parent = SectionFrame
			secthin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			secthin.BackgroundTransparency = 1.000
			secthin.Position = UDim2.new(-0.00750394911, 0, 0.03927055, 0)
			secthin.Rotation = 180.000
			secthin.Size = UDim2.new(0.00723898318, 0, 0.460499018, 0)
			secthin.Image = "http://www.roblox.com/asset/?id=231862344"
			secthin.ImageTransparency = 0.300

			secarrow.Name = "secarrow"
			secarrow.Parent = SectionFrame
			secarrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			secarrow.BackgroundTransparency = 1.000
			secarrow.Position = UDim2.new(-0.140219212, 0, 0.407669932, 0)
			secarrow.Size = UDim2.new(0.132715285, 0, 0.142636165, 0)
			secarrow.Image = "http://www.roblox.com/asset/?id=231182937"
			secarrow.ImageTransparency = 0.300

			SecFrameScr.Name = "SecFrameScr"
			SecFrameScr.Parent = SectionFrame
			SecFrameScr.Active = true
			SecFrameScr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SecFrameScr.BackgroundTransparency = 1.000
			SecFrameScr.BorderColor3 = Color3.fromRGB(27, 42, 53)
			SecFrameScr.BorderSizePixel = 0
			SecFrameScr.Position = UDim2.new(0.0418259241, 0, 0.048546169, 0)
			SecFrameScr.Size = UDim2.new(0.9, 0, 0.9, 0)
			SecFrameScr.ScrollBarThickness = 8

			sectlist.Name = "sectlist"
			sectlist.Parent = SecFrameScr
			sectlist.SortOrder = Enum.SortOrder.LayoutOrder
			sectlist.Padding = UDim.new(0, 3)
			
			SecFrameScr.CanvasSize = UDim2.new(0, 0, 0, 30 + sectlist.AbsoluteContentSize.Y)
			sectlist:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				SecFrameScr.CanvasSize = UDim2.new(0, 0, 0, 30 + sectlist.AbsoluteContentSize.Y)
			end)
			
			local forSelect = Instance.new("TextButton")
			forSelect.Name = text_sec
			forSelect.Parent = inside
			forSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			forSelect.BackgroundTransparency = 0.500
			forSelect.Size = UDim2.new(1, -29, 0, 28) -- Change from UDim2.new(0, 171, 0, 28)
			forSelect.Font = Enum.Font.Code
			forSelect.Text = text_sec or "Section"
			forSelect.TextColor3 = Color3.fromRGB(0, 0, 0)
			forSelect.TextSize = 14.000
			local UICorner = Instance.new("UICorner")
			UICorner.Parent = forSelect
			
			forSelect.MouseEnter:Connect(function()
				TweenService:Create(forSelect,TweenInfo.new(0.3),{
					BackgroundColor3 = maincolor
				}):Play()
			end)
			forSelect.MouseLeave:Connect(function()
				if TabButton[forSelect.Name.."sec"].Visible == false then
					TweenService:Create(forSelect,TweenInfo.new(0.1),{
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
				end
			end)
			local deploSec = false
			forSelect.MouseButton1Click:Connect(function()
				refreshSec()
				if deploSec == false then
					deploSec = true
					TabButton[forSelect.Name.."sec"].Visible = true
					TweenService:Create(forSelect,TweenInfo.new(0.3),{
						BackgroundColor3 = maincolor
					}):Play()
				else
					deploSec = false
					TabButton[forSelect.Name.."sec"].Visible = false
					TweenService:Create(forSelect,TweenInfo.new(0.1),{
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
				end			
			end)
			
			function Sec_Tab:Button(btText, back)
				local forSelect = Instance.new("TextButton")
				Instance.new("UICorner",forSelect)
				forSelect.Name = btText
				forSelect.Parent = SecFrameScr
				forSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				forSelect.BackgroundTransparency = 0.500
				forSelect.Size = UDim2.new(1, 0, 0, 28)
				forSelect.Font = Enum.Font.Code
				forSelect.Text = btText
				forSelect.TextColor3 = Color3.fromRGB(0, 0, 0)
				forSelect.TextSize = 14.000
				forSelect.MouseButton1Click:Connect(function()
					pcall(back)
					TweenService:Create(forSelect,TweenInfo.new(0.2),{
						Size = UDim2.new(1, -45, 0, 20) -- Scale khi click
					}):Play()
					wait(0.2)
					TweenService:Create(forSelect,TweenInfo.new(0.2),{
						Size = UDim2.new(1, 0, 0, 28) -- Trở về scale ban đầu
					}):Play()
				end)
				forSelect.MouseEnter:Connect(function()
					TweenService:Create(forSelect,TweenInfo.new(0.3),{
						BackgroundColor3 = maincolor
					}):Play()
				end)
				forSelect.MouseLeave:Connect(function()
					TweenService:Create(forSelect,TweenInfo.new(0.1),{
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
				end)
			end
			function Sec_Tab:Line()
				local line = Instance.new("Frame")
				line.Name = "line"
				line.Parent = SecFrameScr
				line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				line.BackgroundTransparency = 0.500
				line.Position = UDim2.new(0, 0, 0.1, 0)
				line.Size = UDim2.new(1, 0, 0, 5) -- Thay đổi từ UDim2.new(0, 171, 0, 5)
				Instance.new("UICorner", line)
				line.MouseEnter:Connect(function()
					TweenService:Create(line,TweenInfo.new(0.3),{
						BackgroundColor3 = maincolor
					}):Play()
				end)
				line.MouseLeave:Connect(function()
					TweenService:Create(line,TweenInfo.new(0.1),{
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
				end)
			end
			function Sec_Tab:Toggle(TexT,bool,func)
				
				local Toggling = Instance.new("Frame")
				local TogText = Instance.new("TextLabel")
				local TogBt = Instance.new("ImageButton")

				Toggling.Name = "Toggling"
				Toggling.Parent = SecFrameScr
				Toggling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggling.BackgroundTransparency = 0.500
				Toggling.Position = UDim2.new(0, 0, 0.137404576, 0)
				Toggling.Size = UDim2.new(1, 0, 0, 39) -- Change from UDim2.new(0, 171, 0, 39)

				TogText.Name = TexT
				TogText.Parent = Toggling
				TogText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TogText.BackgroundTransparency = 1.000
				TogText.Position = UDim2.new(0.0350877196, 0, 0.128205135, 0)
				TogText.Size = UDim2.new(0.760233939, 0, 0.717948735, 0)
				TogText.Font = Enum.Font.Code
				TogText.Text = TexT
				TogText.TextColor3 = Color3.fromRGB(0, 0, 0)
				TogText.TextSize = 14.000
				TogText.TextXAlignment = Enum.TextXAlignment.Left

				TogBt.Name = "TogBt"
				TogBt.Parent = Toggling
				TogBt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TogBt.BackgroundTransparency = 1.000
				TogBt.Position = UDim2.new(0.795321643, 0, 0.128205135, 0)
				TogBt.Size = UDim2.new(0.13, 0, 0.717948735, 0)
				TogBt.Image = "rbxassetid://234370699"
				Instance.new("UICorner",Toggling)
				
				Toggling.MouseEnter:Connect(function()
					TweenService:Create(Toggling,TweenInfo.new(0.3),{
						BackgroundColor3 = maincolor
					}):Play()
				end)
				Toggling.MouseLeave:Connect(function()
					TweenService:Create(Toggling,TweenInfo.new(0.1),{
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
				end)
				
				local toggled = bool or false
				if toggled == true then
					TogBt.Image = "rbxassetid://234370725"
				end
				TogBt.MouseButton1Click:Connect(function()
					if toggled == true then
						toggled = false
						pcall(function()
							func(toggled)
						end)
						TogBt.Image = "rbxassetid://234370699"
					else
						toggled = true
						pcall(function()
							func(toggled)
						end)
						TogBt.Image = "rbxassetid://234370725"
					end
					TweenService:Create(TogBt,TweenInfo.new(0.2),{
						Size = UDim2.new(0.1, 0,0.642, 0)
					}):Play()
					wait(0.2)
					TweenService:Create(TogBt,TweenInfo.new(0.2),{
						Size = UDim2.new(0.13, 0,0.718, 0)
					}):Play()
				end)
			end
			function Sec_Tab:Label(str)
				local lab_tab = {}
				local LabelThingnot = Instance.new("TextLabel")
				LabelThingnot.Name = str
				LabelThingnot.Parent = SecFrameScr
				LabelThingnot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelThingnot.BackgroundTransparency = 1.000
				LabelThingnot.Position = UDim2.new(0, 0, 0.309160292, 0)
				LabelThingnot.Size = UDim2.new(1, 0, 0, 28) -- Change from UDim2.new(0, 171, 0, 28)
				LabelThingnot.Font = Enum.Font.Code
				LabelThingnot.Text = str
				LabelThingnot.TextColor3 = maincolor
				LabelThingnot.TextSize = 14.000
				LabelThingnot.TextStrokeTransparency = 0.5
				
				function lab_tab:New(strn)
					LabelThingnot.Text = strn
				end
				return lab_tab
			end
			function Sec_Tab:Slider(txt, min, max, mid, func)
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")

				local maxvalue = max or 10
				local minvalue = min or 1
				local mid = mid or 3

				maxvalue = maxvalue + 1

				local SliderTemp = Instance.new("Frame")
				local Slidenum = Instance.new("TextButton")
				local Slide1 = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local HoldButton = Instance.new("ImageButton")
				local Slide = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local TextHere = Instance.new("TextLabel")

				SliderTemp.Name = "SliderTemp"
				SliderTemp.Parent = SecFrameScr
				SliderTemp.BackgroundColor3 = maincolor
				SliderTemp.BackgroundTransparency = 1.000
				SliderTemp.BorderSizePixel = 0
				SliderTemp.Position = UDim2.new(0, 0, 0.265151501, 0)
				SliderTemp.Size = UDim2.new(1.1, 0, 0, 32) -- Change from UDim2.new(0, 171, 0, 32)

				Slidenum.Name = "Slidenum"
				Slidenum.Parent = SliderTemp
				Slidenum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slidenum.BackgroundTransparency = 1
				Slidenum.BorderSizePixel = 0
				Slidenum.Position = UDim2.new(0.793, 0, 0.281, 0)
				Slidenum.Size = UDim2.new(0, 27, 0, 18)
				Slidenum.ZIndex = 7
				Slidenum.Font = Enum.Font.Code
				Slidenum.Text = mid
				Slidenum.TextColor3 = Color3.fromRGB(0, 0, 0)
				Slidenum.TextScaled = false
				Slidenum.TextSize = 14.000
				Slidenum.TextWrapped = true

				Slide1.Name = "Slide1"
				Slide1.Parent = SliderTemp
				Slide1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slide1.Position = UDim2.new(0.033, 0, 0.5, 0)
				Slide1.Size = UDim2.new(0.76, 0, 0.25, 0) -- Already using scale
				Slide1.ZIndex = 9

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Slide1

				HoldButton.Name = "HoldButton"
				HoldButton.Parent = Slide1
				HoldButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				HoldButton.BackgroundTransparency = 1.000
				HoldButton.BorderSizePixel = 0
				HoldButton.Position = UDim2.new(0, 0, -0.625, 0)
				HoldButton.Size = UDim2.new(1, 0, 2.25, 0)
				HoldButton.ZIndex = 11
				HoldButton.ImageTransparency = 1.000

				Slide.Name = "Slide"
				Slide.Parent = Slide1
				Slide.BackgroundColor3 = maincolor
				Slide.Size = UDim2.new(0, 0, 0, 8)
				local SliderCaculate = (Slide1.AbsoluteSize.X/100)*(mid/maxvalue*100)
				Slide.Size = UDim2.new(0, SliderCaculate, 1, 0) -- Set height to full parent height
				Slide.ZIndex = 10

				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = Slide

				TextHere.Name = "TextHere"
				TextHere.Parent = SliderTemp
				TextHere.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextHere.BackgroundTransparency = 1.000
				TextHere.BorderSizePixel = 0
				TextHere.Position = UDim2.new(0.0122866556, 0, -0.074426651, 0)
				TextHere.Size = UDim2.new(0, 130, 0, 18)
				TextHere.ZIndex = 4
				TextHere.Font = Enum.Font.Code
				TextHere.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextHere.TextScaled = false
				TextHere.TextSize = 14.000
				TextHere.TextStrokeTransparency = 1
				TextHere.TextTransparency = 0
				TextHere.TextWrapped = true
				TextHere.Text = txt

				local Value;
				local SliderIn = Slide
				local Val = Slidenum

				HoldButton.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / Slide1.AbsoluteSize.X) * SliderIn.AbsoluteSize.X) + tonumber(minvalue)) or 0
					SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, Slide1.AbsoluteSize.X), 1, 0)
					Val.Text = Value
					local moveconnection, releaseconnection
					pcall(function()
						func(Value)
					end)
					moveconnection = mouse.Move:Connect(function()
						Val.Text = Value
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / Slide1.AbsoluteSize.X) * SliderIn.AbsoluteSize.X) + tonumber(minvalue)) or 0
						SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, Slide1.AbsoluteSize.X), 1, 0)
						pcall(function()
							func(Value)
						end)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						Val.Text = Value
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / Slide1.AbsoluteSize.X) * SliderIn.AbsoluteSize.X) + tonumber(minvalue)) or 0
							SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, Slide1.AbsoluteSize.X), 1, 0)
							pcall(function()
								func(Value)
							end)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
			end
			function Sec_Tab:Dropdown(txt,list, func)
				local Drop_Tab = {}
				
				local DropFuncF = Instance.new("ImageLabel")
				local dsecthin2 = Instance.new("ImageLabel")
				local dsecthin = Instance.new("ImageLabel")
				local arrrrw = Instance.new("ImageLabel")
				local DropFrame = Instance.new("ScrollingFrame")
				local SampleDropClick = Instance.new("TextButton")
				local DropListDown = Instance.new("UIListLayout")
				MakeDraggable(DropFuncF,DropFuncF)
				
				local despawn = false
				
				local forSelect = Instance.new("TextButton")
				Instance.new("UICorner",forSelect)
				forSelect.Name = txt
				forSelect.Parent = SecFrameScr
				forSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				forSelect.BackgroundTransparency = 0.500
				forSelect.Size = UDim2.new(1, 0, 0, 28) -- Change from UDim2.new(0, 171, 0, 28)
				forSelect.Font = Enum.Font.Code
				forSelect.Text = txt..": nil"
				forSelect.TextColor3 = Color3.fromRGB(0, 0, 0)
				forSelect.TextSize = 14.000
				forSelect.MouseButton1Click:Connect(function()
					spawn(function()
						TweenService:Create(forSelect,TweenInfo.new(0.2),{
							Size = UDim2.new(1, -45, 0, 20)
						}):Play()
						wait(0.2)
						TweenService:Create(forSelect,TweenInfo.new(0.2),{
							Size = UDim2.new(1, 0, 0, 28)
						}):Play()
					end)
					if despawn == false then
						despawn = true
						TweenService:Create(forSelect,TweenInfo.new(0.3),{
							BackgroundColor3 = maincolor
						}):Play()
						DropFuncF.Visible = true
					else
						despawn = false
						TweenService:Create(forSelect,TweenInfo.new(0.1),{
							BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						}):Play()
						DropFuncF.Visible = false
					end
				end)


				DropFuncF.Name = txt.."tab"
				DropFuncF.Parent = TabButton
				DropFuncF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropFuncF.BackgroundTransparency = 1.000
				DropFuncF.Position = UDim2.new(8.44999981, 0, -1.09399998, 0)
				DropFuncF.Size = UDim2.new(3.00222373, 0, 4.51117182, 0)
				DropFuncF.Image = "rbxassetid://296748591"
				DropFuncF.Visible = false

				dsecthin2.Name = "dsecthin2"
				dsecthin2.Parent = DropFuncF
				dsecthin2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				dsecthin2.BackgroundTransparency = 1.000
				dsecthin2.Position = UDim2.new(-0.00750394911, 0, 0.499769598, 0)
				dsecthin2.Size = UDim2.new(0.00723898318, 0, 0.460499018, 0)
				dsecthin2.Image = "http://www.roblox.com/asset/?id=231862344"
				dsecthin2.ImageTransparency = 0.300

				dsecthin.Name = "dsecthin"
				dsecthin.Parent = DropFuncF
				dsecthin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				dsecthin.BackgroundTransparency = 1.000
				dsecthin.Position = UDim2.new(-0.00750394911, 0, 0.03927055, 0)
				dsecthin.Rotation = 180.000
				dsecthin.Size = UDim2.new(0.00723898318, 0, 0.460499018, 0)
				dsecthin.Image = "http://www.roblox.com/asset/?id=231862344"
				dsecthin.ImageTransparency = 0.300

				arrrrw.Name = "arrrrw"
				arrrrw.Parent = DropFuncF
				arrrrw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				arrrrw.BackgroundTransparency = 1.000
				arrrrw.Position = UDim2.new(-0.140219212, 0, 0.407669932, 0)
				arrrrw.Size = UDim2.new(0.132715285, 0, 0.142636165, 0)
				arrrrw.Image = "http://www.roblox.com/asset/?id=231182937"
				arrrrw.ImageTransparency = 0.300

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = DropFuncF
				DropFrame.Active = true
				DropFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropFrame.BackgroundTransparency = 1.000
				DropFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0.0418259241, 0, 0.048546169, 0)
				DropFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
				DropFrame.ScrollBarThickness = 8

				DropListDown.Name = "DropListDown"
				DropListDown.Parent = DropFrame
				DropListDown.SortOrder = Enum.SortOrder.LayoutOrder
				DropListDown.Padding = UDim.new(0, 3)
				
				DropFrame.CanvasSize = UDim2.new(0, 0, 0, 30 + DropListDown.AbsoluteContentSize.Y)
				DropListDown:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					DropFrame.CanvasSize = UDim2.new(0, 0, 0, 30 + DropListDown.AbsoluteContentSize.Y)
				end)
				
				for i,v in pairs(list) do
					local SampleDropClick = Instance.new("TextButton")
					SampleDropClick.Name = "SampleDropClick"
					SampleDropClick.Parent = DropFrame
					SampleDropClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SampleDropClick.BackgroundTransparency = 0.500
					SampleDropClick.Size = UDim2.new(1, 0, 0, 28)
					SampleDropClick.Font = Enum.Font.Code
					SampleDropClick.Text = v
					SampleDropClick.TextColor3 = Color3.fromRGB(0, 0, 0)
					SampleDropClick.TextSize = 14.000
					Instance.new("UICorner",SampleDropClick)

					SampleDropClick.MouseButton1Click:Connect(function()
						forSelect.Text = txt..": "..v
						pcall(function()
							func(v)
						end)
						despawn = false
						TweenService:Create(forSelect,TweenInfo.new(0.1),{
							BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						}):Play()
						DropFuncF.Visible = false
					end)
					SampleDropClick.MouseEnter:Connect(function()
						TweenService:Create(SampleDropClick,TweenInfo.new(0.3),{
							BackgroundColor3 = maincolor
						}):Play()
					end)
					SampleDropClick.MouseLeave:Connect(function()
						TweenService:Create(SampleDropClick,TweenInfo.new(0.1),{
							BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						}):Play()
					end)
				end	
				function Drop_Tab:New(nlist)
					for i,v in pairs(DropFrame:GetChildren()) do
						if v:IsA("TextButton") then
							v:Destroy()
						end
					end
					for i,v in pairs(nlist) do
						local SampleDropClick = Instance.new("TextButton")
						SampleDropClick.Name = "SampleDropClick"
						SampleDropClick.Parent = DropFrame
						SampleDropClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SampleDropClick.BackgroundTransparency = 0.500
						SampleDropClick.Size = UDim2.new(1, 0, 0, 28)
						SampleDropClick.Font = Enum.Font.Code
						SampleDropClick.Text = v
						SampleDropClick.TextColor3 = Color3.fromRGB(0, 0, 0)
						SampleDropClick.TextSize = 14.000
						Instance.new("UICorner",SampleDropClick)

						SampleDropClick.MouseButton1Click:Connect(function()
							forSelect.Text = txt..": "..v
							pcall(function()
								func(v)
							end)
							despawn = false
							TweenService:Create(forSelect,TweenInfo.new(0.1),{
								BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							}):Play()
							DropFuncF.Visible = false
						end)
						SampleDropClick.MouseEnter:Connect(function()
							TweenService:Create(SampleDropClick,TweenInfo.new(0.3),{
								BackgroundColor3 = maincolor
							}):Play()
						end)
						SampleDropClick.MouseLeave:Connect(function()
							TweenService:Create(SampleDropClick,TweenInfo.new(0.1),{
								BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							}):Play()
						end)
					end	
				end
				return Drop_Tab
			end
			function Sec_Tab:Textbox(txt,txt_hold,func)
				local TypeZone = Instance.new("Frame")
				local TextHere = Instance.new("TextLabel")
				local Re = Instance.new("TextBox")

				TypeZone.Name = "TypeZone"
				TypeZone.Parent = SecFrameScr
				TypeZone.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
				TypeZone.BackgroundTransparency = 1.000
				TypeZone.BorderSizePixel = 0
				TypeZone.Size = UDim2.new(1, -30, 0, 27) -- Change from UDim2.new(0, 170, 0, 27)

				TextHere.Name = "TextHere"
				TextHere.Parent = TypeZone
				TextHere.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextHere.BackgroundTransparency = 1.000
				TextHere.BorderSizePixel = 0
				TextHere.Position = UDim2.new(0.0122866556, 0, 0.113073282, 0)
				TextHere.Size = UDim2.new(0, 121, 0, 24)
				TextHere.ZIndex = 4
				TextHere.Font = Enum.Font.Code
				TextHere.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextHere.TextScaled = false
				TextHere.TextSize = 14.000
				TextHere.TextStrokeTransparency = 1
				TextHere.TextTransparency = 0
				TextHere.TextWrapped = true
				TextHere.Text = txt..":"

				Re.Name = "Re"
				Re.Parent = TypeZone
				Re.BackgroundColor3 = Color3.fromRGB(193, 193, 193)
				Re.BorderSizePixel = 0
				Re.Position = UDim2.new(0.55, 0, 0.113073282, 0)
				Re.Size = UDim2.new(0.565, 0, 0, 23)
				Re.ZIndex = 11
				Re.Font = Enum.Font.Code
				Re.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
				Re.PlaceholderText = txt_hold or "HoldTxt"
				Re.Text = ""
				Re.TextColor3 = maincolor
				Re.TextScaled = false
				Re.TextSize = 14.000
				Re.TextStrokeTransparency = 0.500
				Re.TextWrapped = true

				Re.FocusLost:Connect(function()
					pcall(function()
						func(Re.Text)
					end)
				end)
			end
			return Sec_Tab
		end
		return tab_Tab
	end
	return Window_tab
end

return SAO
