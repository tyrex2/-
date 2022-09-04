-- services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

if not game:IsLoaded() then
	repeat wait() until game:IsLoaded()
end

local version = '1.0.0'
local Holder = Instance.new("Frame")
local Buttons = Instance.new("ScrollingFrame")
local Frame1 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Button1 = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Button2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Button3 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Button4 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Button5 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Button6 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Frame2 = Instance.new("Frame")
local Button1_2 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Button2_2 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Button3_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Button4_2 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")
local Frame3 = Instance.new("Frame")
local down_buttons = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Amonut1 = Instance.new("TextBox")
local UICorner_11 = Instance.new("UICorner")
local UICorner_12 = Instance.new("UICorner")
local Topbar = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Image = Instance.new("ImageLabel")
local Close = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local control = {}
local blacklisttool = {"Snowball", "Duckie", "Spatula", "Broom", "SweepTheFloorsTaskParts", "Cheezburger"}


local Inverse, toObjectSpace, components
do
	local CalledCFrameNew = CFrame.new();
	Inverse = CalledCFrameNew.Inverse
	toObjectSpace = CalledCFrameNew.toObjectSpace
	components = CalledCFrameNew.components
end

local FindFirstChild, FindFirstChildOfClass, FindFirstChildWhichIsA, WaitForChild = 
	game.FindFirstChild,
game.FindFirstChildOfClass,
game.FindFirstChildWhichIsA,
game.WaitForChild


-- LocalPlayer

local _self_ = Players.LocalPlayer;
local Backpack = _self_.Backpack;
local leaderstats = _self_.leaderstats
local Character = _self_.Character;
local humanoid = Character.Humanoid;
local rootpart = Character.HumanoidRootPart
local Animate = Character:FindFirstChild("Animate");

-- functions

function randomString()
	local length = math.random(10,25)
	local array = {}
	for i = 1,length do
		array[i] = string.char(math.random(32,126));
	end
	return table.concat(array)
end

local function getPlayer(str)
	for i,v in pairs(Players:GetPlayers()) do
		if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
			return v
		end
	end
end

local CFrameTool = function(tool, pos)
	local RightArm = FindFirstChild(Character, "RightLowerArm") or FindFirstChild(Character, "Right Arm");
	local Arm = RightArm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0);
	local Frame = Inverse(toObjectSpace(Arm, pos));

	tool.Grip = Frame
end


-- synapse x's protection gui
PARENT = nil

if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = CoreGui
	PARENT = Main
	for i,v in pairs(CoreGui:GetDescendants()) do
		if v.Name == Main then
			v:Destroy()
		end
	end
elseif CoreGui:FindFirstChild('RobloxGui') then
	PARENT = CoreGui.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = CoreGui
	PARENT = Main
	for i,v in pairs(CoreGui:GetDescendants()) do
		if v:IsA("ScreenGui") and v:FindFirstChild(Holder) then
			v:Destroy()
		end
	end
end

-- guis
Holder.Name = randomString()
Holder.Parent = PARENT
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.Position = UDim2.new(0.220018029, 0, 0.304715753, 0)
Holder.Size = UDim2.new(0, 620, 0, 344)

Buttons.Name = "Buttons"
Buttons.Parent = Holder
Buttons.Active = true
Buttons.BackgroundColor3 = Color3.fromRGB(213, 213, 213)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0.0241935495, 0, 0.122093022, 0)
Buttons.Size = UDim2.new(0, 590, 0, 239)
Buttons.BottomImage = ""
Buttons.CanvasSize = UDim2.new(0, 0, 1, 0)
Buttons.ScrollBarThickness = 10
Buttons.TopImage = ""

Frame1.Name = "Frame1"
Frame1.Parent = Buttons
Frame1.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0, 0, 0.0454824269, 0)
Frame1.Size = UDim2.new(0, 224, 0, 333)

UIListLayout.Parent = Frame1
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

Button1.Name = "Button1"
Button1.Parent = Frame1
Button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button1.Size = UDim2.new(0, 200, 0, 50)
Button1.Font = Enum.Font.SourceSans
Button1.Text = "Buy knocked car"
Button1.TextColor3 = Color3.fromRGB(20, 20, 20)
Button1.TextSize = 18.000
Button1.TextStrokeTransparency = 0.860

UICorner.Parent = Button1

Button2.Name = "Button2"
Button2.Parent = Frame1
Button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Font = Enum.Font.SourceSans
Button2.Text = "Buy Rocket Launcher"
Button2.TextColor3 = Color3.fromRGB(20, 20, 20)
Button2.TextSize = 18.000
Button2.TextStrokeTransparency = 0.860

UICorner_2.Parent = Button2

Button3.Name = "Button3"
Button3.Parent = Frame1
Button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button3.Size = UDim2.new(0, 200, 0, 50)
Button3.Font = Enum.Font.SourceSans
Button3.Text = "Buy Hammer"
Button3.TextColor3 = Color3.fromRGB(20, 20, 20)
Button3.TextSize = 18.000
Button3.TextStrokeTransparency = 0.860

UICorner_3.Parent = Button3

Button4.Name = "Button4"
Button4.Parent = Frame1
Button4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button4.Size = UDim2.new(0, 200, 0, 50)
Button4.Font = Enum.Font.SourceSans
Button4.Text = "Buy Pistol"
Button4.TextColor3 = Color3.fromRGB(20, 20, 20)
Button4.TextSize = 18.000
Button4.TextStrokeTransparency = 0.860

UICorner_4.Parent = Button4

Button5.Name = "Button5"
Button5.Parent = Frame1
Button5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button5.Size = UDim2.new(0, 200, 0, 50)
Button5.Font = Enum.Font.SourceSans
Button5.Text = "add money"
Button5.TextColor3 = Color3.fromRGB(20, 20, 20)
Button5.TextSize = 18.000
Button5.TextStrokeTransparency = 0.860

UICorner_5.Parent = Button5

Button6.Name = "Button6"
Button6.Parent = Frame1
Button6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button6.Size = UDim2.new(0, 200, 0, 50)
Button6.Font = Enum.Font.SourceSans
Button6.Text = "Buy Boombox"
Button6.TextColor3 = Color3.fromRGB(20, 20, 20)
Button6.TextSize = 18.000
Button6.TextStrokeTransparency = 0.860

UICorner_6.Parent = Button6

Frame2.Name = "Frame2"
Frame2.Parent = Buttons
Frame2.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.379661024, 0, 0.0454824269, 0)
Frame2.Size = UDim2.new(0, 224, 0, 333)

Button1_2.Name = "Button1"
Button1_2.Parent = Frame2
Button1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button1_2.Size = UDim2.new(0, 200, 0, 50)
Button1_2.Font = Enum.Font.SourceSans
Button1_2.Text = "drop 250 cola at once"
Button1_2.TextColor3 = Color3.fromRGB(20, 20, 20)
Button1_2.TextSize = 18.000
Button1_2.TextStrokeTransparency = 0.860

UICorner_7.Parent = Button1_2

Button2_2.Name = "Button2"
Button2_2.Parent = Frame2
Button2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button2_2.Size = UDim2.new(0, 200, 0, 50)
Button2_2.Font = Enum.Font.SourceSans
Button2_2.Text = "fix dupe tools"
Button2_2.TextColor3 = Color3.fromRGB(20, 20, 20)
Button2_2.TextSize = 18.000
Button2_2.TextStrokeTransparency = 0.860

UICorner_8.Parent = Button2_2

Button3_2.Name = "Button3"
Button3_2.Parent = Frame2
Button3_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button3_2.Size = UDim2.new(0, 200, 0, 50)
Button3_2.Font = Enum.Font.SourceSans
Button3_2.Text = "void all"
Button3_2.TextColor3 = Color3.fromRGB(20, 20, 20)
Button3_2.TextSize = 18.000
Button3_2.TextStrokeTransparency = 0.860

UICorner_9.Parent = Button3_2

Button4_2.Name = "Button4"
Button4_2.Parent = Frame2
Button4_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button4_2.Size = UDim2.new(0, 200, 0, 50)
Button4_2.Font = Enum.Font.SourceSans
Button4_2.Text = "givetools"
Button4_2.TextColor3 = Color3.fromRGB(20, 20, 20)
Button4_2.TextSize = 18.000
Button4_2.TextStrokeTransparency = 0.860

UICorner_10.Parent = Button4_2

UIListLayout_2.Parent = Frame2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 6)

Frame3.Name = "Frame3"
Frame3.Parent = Buttons
Frame3.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(0.759322047, 0, 0.0454824269, 0)
Frame3.Size = UDim2.new(0, 130, 0, 333)

down_buttons.Name = "down_buttons"
down_buttons.Parent = Holder
down_buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
down_buttons.BackgroundTransparency = 1.000
down_buttons.Position = UDim2.new(0.0209677424, 0, 0.822674394, 0)
down_buttons.Size = UDim2.new(0, 590, 0, 61)

UIListLayout_3.Parent = down_buttons
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 25)

Amonut1.Name = "Amonut1"
Amonut1.Parent = down_buttons
Amonut1.BackgroundColor3 = Color3.fromRGB(212, 212, 212)
Amonut1.Position = UDim2.new(0, 0, 0.0901639313, 0)
Amonut1.Size = UDim2.new(0, 200, 0, 36)
Amonut1.Font = Enum.Font.SourceSansBold
Amonut1.PlaceholderColor3 = Color3.fromRGB(33, 33, 33)
Amonut1.PlaceholderText = "Amonut here"
Amonut1.Text = ""
Amonut1.TextColor3 = Color3.fromRGB(33, 33, 33)
Amonut1.TextSize = 14.000
Amonut1.TextStrokeTransparency = 0.890

UICorner_11.Parent = Amonut1


Topbar.Name = "Topbar"
Topbar.Parent = Holder
Topbar.BackgroundColor3 = Color3.fromRGB(199, 199, 199)
Topbar.Size = UDim2.new(0, 620, 0, 34)

UICorner_13.Parent = Topbar

Name.Name = "Name"
Name.Parent = Topbar
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0564516112, 0, 0, 0)
Name.Size = UDim2.new(0, 150, 0, 34)
Name.Font = Enum.Font.SourceSans
Name.Text = "im troller lool [ "..version.." ]"
Name.TextColor3 = Color3.fromRGB(66, 66, 66)
Name.TextSize = 26.000
Name.TextStrokeTransparency = 0.930

Image.Name = "Image"
Image.Parent = Topbar
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.BackgroundTransparency = 1.000
Image.Size = UDim2.new(0, 35, 0, 34)
Image.Image = "rbxassetid://8408499689"

Close.Name = "Close"
Close.Parent = Topbar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.930645168, 0, 0, 0)
Close.Size = UDim2.new(0, 43, 0, 34)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 18.000
Close.TextStrokeTransparency = 0.750

-- useless tool deleter
game:GetService("RunService").Stepped:Connect(function()
	for i,v in pairs(blacklisttool) do
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v) then
			game.Players.LocalPlayer.Backpack:FindFirstChild(v):Destroy()
		end
	end
end)

UICorner_14.Parent = Holder

local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));

local gui = Holder

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8); -- // The speed of the UI darg.
function Update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
end;

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)

-- Topbar


Close.MouseButton1Down:Connect(function()
	pcall(function() getgenv().Script = false end)
	wait(0.3)
	Holder.Parent:Destroy()
end)

-- Frame1

Button1.MouseButton1Down:Connect(function()
	local oldvalue = leaderstats.Points.Value
	for i = 1,tonumber(Amonut1.Text) do
		ReplicatedStorage.TaskPointsReward:FireServer(100000)
		task.wait()
		ReplicatedStorage.ShopEvent:FireServer(100000, "KnockbackCar")
		wait()
	end
	wait()
	ReplicatedStorage.TaskPointsReward:FireServer(oldvalue)
end)

Button2.MouseButton1Down:Connect(function()
	local oldvalue = leaderstats.Points.Value
	for i = 1,tonumber(Amonut1.Text) do
		ReplicatedStorage.TaskPointsReward:FireServer(5000)
		task.wait()
		ReplicatedStorage.ShopEvent:FireServer(5000, "RocketLauncher")
		wait()
	end
	wait()
	ReplicatedStorage.TaskPointsReward:FireServer(oldvalue)
end)

Button3.MouseButton1Down:Connect(function()
	local oldvalue = leaderstats.Points.Value
	for i = 1,tonumber(Amonut1.Text) do
		ReplicatedStorage.TaskPointsReward:FireServer(2500)
		task.wait()
		ReplicatedStorage.ShopEvent:FireServer(2500, "Hammer")
		wait()
	end
	ReplicatedStorage.TaskPointsReward:FireServer(oldvalue)
end)

Button4.MouseButton1Down:Connect(function()
	local oldvalue = leaderstats.Points.Value
	for i = 1,tonumber(Amonut1.Text) do
		ReplicatedStorage.TaskPointsReward:FireServer(500)
		task.wait()
		ReplicatedStorage.ShopEvent:FireServer(500, "Pistol")
		wait()
	end
	wait()
	ReplicatedStorage.TaskPointsReward:FireServer(oldvalue)
end)

Button5.MouseButton1Down:Connect(function() -- points added
	wait(.0)
	for i,v in pairs(Players:GetPlayers()) do
		if v.Name ~= _self_.Name then
			if v.leaderstats.Points.Value == math.huge then
				StarterGui:SetCore("SendNotification", {
					Title = "WARNING!";
					Text = "developer in the server. please be careful to use this.";
					Duration = math.huge;
					Button1 = "Agree";
					Button2 = "fuck off";
				})
			end
		end
	end
	wait(0.3)
	ReplicatedStorage.TaskPointsReward:FireServer(-leaderstats.Points.Value)
	task.wait()
	ReplicatedStorage.TaskPointsReward:FireServer(tonumber(Amonut1.Text))
end)

Button6.MouseButton1Down:Connect(function() -- Bombox
	local oldvalue = leaderstats.Points.Value
	ReplicatedStorage.TaskPointsReward:FireServer(-leaderstats.Points.Value)

	for i = 1,tonumber(Amonut1.Text) do
		ReplicatedStorage.TaskPointsReward:FireServer(500)
		task.wait()
		ReplicatedStorage.ShopEvent:FireServer(500, "Boombox")
		wait()
	end
	wait()
	ReplicatedStorage.TaskPointsReward:FireServer(oldvalue)
end)

-- Frame2
Button1_2.MouseButton1Down:Connect(function() -- spam drop cola
	local oldvalue = leaderstats.Points.Value
	for i = 1,250 do
		ReplicatedStorage.TaskPointsReward:FireServer(10)
		task.wait()
		ReplicatedStorage.ShopEvent:FireServer(10, "Bloxy Cola")
		wait()
	end
	wait()
	ReplicatedStorage.TaskPointsReward:FireServer(oldvalue)
	wait()
	for i,v in pairs(Backpack:GetChildren()) do
		if v.Name == "Bloxy Cola" then
			v.Parent = Character
			v.Parent = workspace
		end
	end
end)


Button2_2.MouseButton1Down:Connect(function() -- fix dupe
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Character
		v:Destroy()
		task.wait()
	end
	task.wait()
	game.Players.LocalPlayer:Kick("Rejoin..")
	task.wait()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, _self_)
end)

Button3_2.MouseButton1Down:Connect(function() -- void everyone
	local oldpos = rootpart.CFrame
	local GetPlayers = Players:GetPlayers()
	rootpart.CFrame = CFrame.new(8e6,9e6,8e5)
	task.wait()
	local Humanoid2 = Character.Humanoid:Clone()
	Animate.Disabled = true
	Character.Humanoid:Destroy()
	Humanoid2.Parent = Character;
	Humanoid2:ChangeState(14)
	for i,v in pairs(Backpack:GetChildren()) do
		if v:IsA("Tool") and v.RequiresHandle == true then
			v.Parent = Character
		end
		for i,x in pairs(GetPlayers) do
			if x.Name ~= _self_.Name and not x.Character:FindFirstChildOfClass("Humanoid").Sit then
				firetouchinterest(x.Character.Head, v.Handle, 0);
				firetouchinterest(x.Character.Head, v.Handle, 1);
			end
		end
	end	
	wait(0.9)
	humanoid.Health = 0
end)
