-- Gui to Lua
-- Version: 3.2

-- Instances:

local Mobile_Control = Instance.new("ScreenGui")
local FPS = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Key_F = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local Key_Q = Instance.new("TextButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_2 = Instance.new("UICorner")
local RightClick = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_3 = Instance.new("UICorner")
local LeftClick = Instance.new("TextButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")

--Properties:

Mobile_Control.Name = "Mobile_Control"
Mobile_Control.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Mobile_Control.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FPS.Name = "FPS"
FPS.Parent = Mobile_Control
FPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPS.BackgroundTransparency = 1.000
FPS.Size = UDim2.new(0, 634, 0, 48)
FPS.Visible = false
FPS.Font = Enum.Font.Code
FPS.Text = "FPS:"
FPS.TextColor3 = Color3.fromRGB(255, 255, 255)
FPS.TextScaled = true
FPS.TextSize = 14.000
FPS.TextStrokeTransparency = 0.000
FPS.TextWrapped = true
FPS.TextXAlignment = Enum.TextXAlignment.Left
FPS.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint.Parent = FPS
UIAspectRatioConstraint.AspectRatio = 13.208

Key_F.Name = "Key_F"
Key_F.Parent = Mobile_Control
Key_F.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Key_F.BackgroundTransparency = 0.500
Key_F.Position = UDim2.new(0.663017988, 0, 0.274092615, 0)
Key_F.Size = UDim2.new(0, 136, 0, 136)
Key_F.ZIndex = 1000
Key_F.Font = Enum.Font.Highway
Key_F.Text = "F/Block"
Key_F.TextColor3 = Color3.fromRGB(255, 255, 255)
Key_F.TextScaled = true
Key_F.TextSize = 14.000
Key_F.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Key_F

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Key_F

Key_Q.Name = "Key_Q"
Key_Q.Parent = Mobile_Control
Key_Q.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Key_Q.BackgroundTransparency = 0.500
Key_Q.Position = UDim2.new(0.0664581731, 0, 0.287859827, 0)
Key_Q.Size = UDim2.new(0, 136, 0, 136)
Key_Q.Visible = false
Key_Q.ZIndex = 1000
Key_Q.Font = Enum.Font.Highway
Key_Q.Text = "Q/Dash"
Key_Q.TextColor3 = Color3.fromRGB(255, 255, 255)
Key_Q.TextScaled = true
Key_Q.TextSize = 14.000
Key_Q.TextWrapped = true

UIAspectRatioConstraint_3.Parent = Key_Q

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Key_Q

RightClick.Name = "RightClick"
RightClick.Parent = Mobile_Control
RightClick.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
RightClick.BackgroundTransparency = 0.500
RightClick.Position = UDim2.new(0.794375479, 0, 0.499381989, 0)
RightClick.Size = UDim2.new(0, 150, 0, 150)
RightClick.ZIndex = 1000
RightClick.Font = Enum.Font.Highway
RightClick.Text = "M2/Feint"
RightClick.TextColor3 = Color3.fromRGB(255, 255, 255)
RightClick.TextScaled = true
RightClick.TextSize = 14.000
RightClick.TextWrapped = true

UIAspectRatioConstraint_4.Parent = RightClick

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = RightClick

LeftClick.Name = "LeftClick"
LeftClick.Parent = Mobile_Control
LeftClick.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
LeftClick.BackgroundTransparency = 0.500
LeftClick.Position = UDim2.new(0.794375479, 0, 0.266198099, 0)
LeftClick.Size = UDim2.new(0, 150, 0, 150)
LeftClick.ZIndex = 1000
LeftClick.Font = Enum.Font.Highway
LeftClick.Text = "M1/Use"
LeftClick.TextColor3 = Color3.fromRGB(255, 255, 255)
LeftClick.TextScaled = true
LeftClick.TextSize = 14.000
LeftClick.TextWrapped = true
LeftClick.Draggable=true
RightClick.Draggable=true
Key_F.Draggable=true
Key_Q.Draggable=true
UIAspectRatioConstraint_5.Parent = LeftClick

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = LeftClick

-- Scripts:

local function KKJMKTO_fake_script() -- Mobile_Control.Handler 
	local script = Instance.new('LocalScript', Mobile_Control)

	--Misc
	local FPS = 0
	--// Variables;
	local UserInputService = game:GetService("UserInputService");
	local RunService = game:GetService("RunService");
	local Players = game:GetService("Players");
	local LocalPlayer = Players.LocalPlayer;
	local Block_Value=false
	--// Gui_Core;
	local UI=script.Parent;
	local Tiempo = tick();
	local FPS_txt=UI:WaitForChild("FPS");
	local LeftClick=UI:WaitForChild("LeftClick");
	local RightClick=UI:WaitForChild("RightClick");
	local Block=UI:WaitForChild("Key_F");
	local Inp="";
	--// Func
	local function Block(Character,Type,Input)
		if Input=="M1" then
			for i,v in pairs(Character:GetChildren()) do
				if v:IsA("Tool") then
					if v:FindFirstChild("Block") then
						local tool=v
						tool:FindFirstChild("Block"):FindFirstChild("RemoteEvent"):FireServer("M1")
					end
				end
			end
			if Type==nil then
			else
				if Type=="Start" then
					for i,v in pairs(Character:GetChildren()) do
						if v:IsA("Tool") then
							if v:FindFirstChild("Block") then
								local tool=v
								tool:FindFirstChild("Block"):FindFirstChild("RemoteEvent"):FireServer("Start")
							end
						end
					end
					if Type=="End" then
						for i,v in pairs(Character:GetChildren()) do
							if v:IsA("Tool") then
								if v:FindFirstChild("Block") then
									local tool=v
									tool:FindFirstChild("Block"):FindFirstChild("RemoteEvent"):FireServer("End")
								end
							end
						end
					end
				end
			end
			end
	
	end
	
	local function Swing(Character,Type,Input)
		if Input=="M1" then
			Inp=Input
		end
		if Input=="M2" then
			Inp=Input
		end
		if Type=="Wep" then
			for i,v in pairs(Character:GetChildren()) do
				if v:IsA("Tool") then
					if v:FindFirstChild("Combat") then
						print("Combat Found!")
						for i,v in pairs(v.Combat:GetChildren()) do
							if v:IsA("RemoteEvent") then
								v:FireServer(Inp)
								
							end
						end
					end
				end
			end
		end	
		if Type=="Magic" then
			for i,v in pairs(Character:GetChildren()) do
				if v:IsA("Tool") then
					if v:FindFirstChild("Click") then
						v:FindFirstChild("Click"):FindFirstChild("RemoteEvent"):FireServer("M1")
					end
				end
			end	
		end
	end
	--// Main
	
	LeftClick.MouseButton1Click:Connect(function()
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:FindFirstChild("Click") then
				Swing(LocalPlayer.Character,"Magic","M1")
			end
			if v:FindFirstChild("Combat") then
				if Block_Value==true then
					Block(LocalPlayer.Character,nil,"M1")
				else
					Swing(LocalPlayer.Character,"Wep","M1")
				end
				
			end
		end
	end)
	RightClick.MouseButton1Click:Connect(function()
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:FindFirstChild("Click") then
				Swing(LocalPlayer.Character,"Magic","M1")
			end
			if v:FindFirstChild("Combat") then
				Swing(LocalPlayer.Character,"Wep","M2")
			end
		end
	end)
	Block.MouseButton1Down:Connect(function()
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v:FindFirstChild("Block") then
					Block(LocalPlayer.Character,"Start")
					Block_Value=true
				else
					return
				end
			end
		end
	end)
	Block.MouseButton1Up:Connect(function()
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v:FindFirstChild("Block") then
					Block(LocalPlayer.Character,"End")
					Block_Value=false
				else
					return
				end
			end
		end
	end)
	
	
end
coroutine.wrap(KKJMKTO_fake_script)()
