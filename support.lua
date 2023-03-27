-- Gui to Lua
-- Version: 3.2

-- Instances:

local Mobile_Control = Instance.new("ScreenGui")
local LeftClick = Instance.new("Frame")
local Input = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local FPS = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local RightClick = Instance.new("Frame")
local Input_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Key_F = Instance.new("Frame")
local Input_3 = Instance.new("TextButton")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local Key_Q = Instance.new("Frame")
local Input_4 = Instance.new("TextButton")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")

--Properties:

Mobile_Control.Name = "Mobile_Control"
Mobile_Control.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Mobile_Control.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LeftClick.Name = "LeftClick"
LeftClick.Parent = Mobile_Control
LeftClick.Active = true
LeftClick.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
LeftClick.BackgroundTransparency = 0.500
LeftClick.Position = UDim2.new(0.0532081388, 0, 0.52661097, 0)
LeftClick.Size = UDim2.new(0, 171, 0, 171)
LeftClick.ZIndex = 2

Input.Name = "Input"
Input.Parent = LeftClick
Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input.BackgroundTransparency = 1.000
Input.Size = UDim2.new(0, 171, 0, 171)
Input.ZIndex = 1000
Input.Font = Enum.Font.Highway
Input.Text = "M1/Use"
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextScaled = true
Input.TextSize = 14.000
Input.TextWrapped = true

UIAspectRatioConstraint.Parent = Input

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = LeftClick

UIAspectRatioConstraint_2.Parent = LeftClick

FPS.Name = "FPS"
FPS.Parent = Mobile_Control
FPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPS.BackgroundTransparency = 1.000
FPS.Size = UDim2.new(0, 634, 0, 48)
FPS.Font = Enum.Font.Code
FPS.Text = "FPS:"
FPS.TextColor3 = Color3.fromRGB(255, 255, 255)
FPS.TextScaled = true
FPS.TextSize = 14.000
FPS.TextStrokeTransparency = 0.000
FPS.TextWrapped = true
FPS.TextXAlignment = Enum.TextXAlignment.Left
FPS.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint_3.Parent = FPS
UIAspectRatioConstraint_3.AspectRatio = 13.208

RightClick.Name = "RightClick"
RightClick.Parent = Mobile_Control
RightClick.Active = true
RightClick.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
RightClick.BackgroundTransparency = 0.500
RightClick.Position = UDim2.new(0.801249921, 0, 0.52661097, 0)
RightClick.Size = UDim2.new(0, 171, 0, 171)
RightClick.ZIndex = 2

Input_2.Name = "Input"
Input_2.Parent = RightClick
Input_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input_2.BackgroundTransparency = 1.000
Input_2.Size = UDim2.new(0, 171, 0, 171)
Input_2.ZIndex = 1000
Input_2.Font = Enum.Font.Highway
Input_2.Text = "M2/Feint"
Input_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Input_2.TextScaled = true
Input_2.TextSize = 14.000
Input_2.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Input_2

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = RightClick

UIAspectRatioConstraint_5.Parent = RightClick

Key_F.Name = "Key_F"
Key_F.Parent = Mobile_Control
Key_F.Active = true
Key_F.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Key_F.BackgroundTransparency = 0.500
Key_F.Position = UDim2.new(0.816194415, 0, 0.288137138, 0)
Key_F.Size = UDim2.new(0, 136, 0, 136)
Key_F.ZIndex = 2

Input_3.Name = "Input"
Input_3.Parent = Key_F
Input_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input_3.BackgroundTransparency = 1.000
Input_3.Size = UDim2.new(0, 136, 0, 136)
Input_3.ZIndex = 1000
Input_3.Font = Enum.Font.Highway
Input_3.Text = "F/Block"
Input_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Input_3.TextScaled = true
Input_3.TextSize = 14.000
Input_3.TextWrapped = true

UIAspectRatioConstraint_6.Parent = Input_3

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = Key_F

UIAspectRatioConstraint_7.Parent = Key_F

Key_Q.Name = "Key_Q"
Key_Q.Parent = Mobile_Control
Key_Q.Active = true
Key_Q.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Key_Q.BackgroundTransparency = 0.500
Key_Q.Position = UDim2.new(0.0681158528, 0, 0.288137138, 0)
Key_Q.Size = UDim2.new(0, 136, 0, 136)
Key_Q.ZIndex = 2

Input_4.Name = "Input"
Input_4.Parent = Key_Q
Input_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input_4.BackgroundTransparency = 1.000
Input_4.Size = UDim2.new(0, 136, 0, 136)
Input_4.ZIndex = 1000
Input_4.Font = Enum.Font.Highway
Input_4.Text = "Q/Dash"
Input_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Input_4.TextScaled = true
Input_4.TextSize = 14.000
Input_4.TextWrapped = true

UIAspectRatioConstraint_8.Parent = Input_4

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = Key_Q

UIAspectRatioConstraint_9.Parent = Key_Q

-- Scripts:

local function ZOLCFQA_fake_script() -- Mobile_Control.Handler 
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
	--// Main
	spawn(function() while game:GetService("RunService").RenderStepped:wait() do local Transcurrido = math.abs(Tiempo-tick()) Tiempo = tick() FPS = math.floor(1/Transcurrido) end end) while wait(0.5) do  FPS_txt.Text="FPS: " ..tostring(FPS) end
	LeftClick:WaitForChild('Input').MouseButton1Click:Connect(function()
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v:FindFirstChild("Block") then
					local tool=v
					tool:WaitForChild("Combat"):WaitForChild("RemoteEvent"):FireServer("M1")
				end
			end
		end
	end)
end
coroutine.wrap(ZOLCFQA_fake_script)()
