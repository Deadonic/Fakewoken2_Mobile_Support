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
			Swing(LocalPlayer.Character,"Wep","M1")
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
