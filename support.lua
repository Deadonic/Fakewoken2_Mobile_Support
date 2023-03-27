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
Key_F.Position = UDim2.new(0.814698994, 0, 0.287859827, 0)
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
RightClick.Position = UDim2.new(0.800625503, 0, 0.525657058, 0)
RightClick.Size = UDim2.new(0, 171, 0, 171)
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
LeftClick.Position = UDim2.new(0.0531665683, 0, 0.525657058, 0)
LeftClick.Size = UDim2.new(0, 171, 0, 171)
LeftClick.ZIndex = 1000
LeftClick.Font = Enum.Font.Highway
LeftClick.Text = "M1/Use"
LeftClick.TextColor3 = Color3.fromRGB(255, 255, 255)
LeftClick.TextScaled = true
LeftClick.TextSize = 14.000
LeftClick.TextWrapped = true

UIAspectRatioConstraint_5.Parent = LeftClick

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = LeftClick

-- Scripts:

local function IJXOM_fake_script() -- Mobile_Control.Handler 
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
	LeftClick.MouseButton1Click:Connect(function()
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
coroutine.wrap(IJXOM_fake_script)()
