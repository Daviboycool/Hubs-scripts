local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

game.StarterGui:SetCore("SendNotification",  { Title = "Er hub"; Text = "load..."; Icon = ""; Duration = 5; })



local SecretEndingTable = {
		"HatCollected",
		"MaskCollected",
		"CrowbarCollected"
	}


local ItemsTable = {
		"Crowbar 1",
		"Crowbar 2",
		"Bat",
		"Pitchfork",
		"Hammer",
		"Wrench",
		"Broom",
		"Armor",
		"Med Kit",
		"Key",
		"Gold Key",
		"Louise",
		"Lollipop",
		"Chips",
		"Golden Apple",
		"Pizza",
		"Gold Pizza",
		"Rainbow Pizza",
		"Rainbow Pizza Box",
		"Book",
		"Phone",
		"Cookie",
		"Apple",
		"Bloxy Cola",
		"Expired Bloxy Cola",
		"Bottle",
		"Ladder",
		"Battery"
	}


local function KillEnemies()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
				Events:WaitForChild("HitBadguy"):FireServer(v, 64.8, 4)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
				Events:WaitForChild("HitBadguy"):FireServer(v, 64.8, 4)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
				Events:WaitForChild("HitBadguy"):FireServer(v, 64.8, 4)
			end
			if game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true) then
				Events:WaitForChild("HitBadguy"):FireServer(game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true), 64.8, 4)
			end
			if game:GetService("Workspace"):FindFirstChild("BadGuyBrute") then
				Events:WaitForChild("HitBadguy"):FireServer(game:GetService("Workspace").BadGuyBrute, 64.8, 4)
			end
		end)
	end

local function HealYourself()
		GiveItem("Pizza")
		Events.Energy:FireServer(25, "Pizza")
	end

local function HealAllPlayers()
		UnequipAllTools()
		task.wait(.2)
		GiveItem("Golden Apple")
		task.wait(.5)
		LocalPlayer.Backpack:WaitForChild("GoldenApple").Parent = LocalPlayer.Character
		task.wait(.5)
		Events:WaitForChild("HealTheNoobs"):FireServer()
	end


local function EquipAllTools()
		for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Character
			end
		end
	end

local function UnequipAllTools()
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Backpack
			end
		end
	end
	
local function GiveItem(Item)
		if Item == "Armor" then
			Events:WaitForChild("Vending"):FireServer(3, "Armor2", "Armor", tostring(LocalPlayer), 1)
		elseif Item == "Crowbar 1" or Item == "Crowbar 2" or Item == "Bat" or Item == "Pitchfork" or Item == "Hammer" or Item == "Wrench" or Item == "Broom" then
			Events.Vending:FireServer(3, tostring(Item:gsub(" ", "")), "Weapons", LocalPlayer.Name, 1)
			Notify('Credits To', "Leo Dicap On V3rmillion For Making This Feature!", 'rbxassetid://4483345998', 3)
		else
			Events:WaitForChild("GiveTool"):FireServer(tostring(Item:gsub(" ", "")))
		end
	end
	
local function GetBestTool()
		for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Assets.Note.Note.Note:GetChildren()) do
			if v.Name:match("Circle") and v.Visible == true then
				GiveItem(tostring(v.Name:gsub("Circle", "")))
			end
		end
	end


local function Train(Ability)
		Events:WaitForChild("RainbowWhatStat"):FireServer(Ability)
	end

	local function TakeDamange(Amount)
		Events:WaitForChild("Energy"):FireServer(-Amount, false, false)
	end

	local function TeleportTo(CFrameArg)
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameArg
	end

local function GetDog()
		for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Assets.Note.Note.Note:GetChildren()) do
			if v.Name:match("Circle") and v.Visible == true then
				GiveItem(tostring(v.Name:gsub("Circle", "")))
				task.wait(.1)
				LocalPlayer.Backpack:WaitForChild(tostring(v.Name:gsub("Circle", ""))).Parent = LocalPlayer.Character
				TeleportTo(CFrame.new(-257.56839, 29.4499969, -910.452637, -0.238445505, 7.71292363e-09, 0.971155882, 1.2913591e-10, 1, -7.91029819e-09, -0.971155882, -1.76076387e-09, -0.238445505))
				task.wait(.5)
				Events:WaitForChild("CatFed"):FireServer(tostring(v.Name:gsub("Circle", "")))
			end
		end
		task.wait(2)
		for i = 1, 3 do
			TeleportTo(CFrame.new(-203.533081, 30.4500484, -790.901428, -0.0148558766, 8.85941187e-09, -0.999889672, 2.65695732e-08, 1, 8.46563175e-09, 0.999889672, -2.64408779e-08, -0.0148558766) + Vector3.new(0, 5, 0))
			task.wait(.1)
		end
	end
	
	local function GetAgent()
		GiveItem("Louise")
		task.wait(.1)
		LocalPlayer.Backpack:WaitForChild("Louise").Parent = LocalPlayer.Character
		Events:WaitForChild("LouiseGive"):FireServer(2)
	end

	local function GetUncle()
		GiveItem("Key")
		task.wait(.1)
		LocalPlayer.Backpack:WaitForChild("Key").Parent = LocalPlayer.Character
		wait(.5)
		Events.KeyEvent:FireServer()
	end
	
	local function ClickPete()
		fireclickdetector(game:GetService("Workspace").UnclePete.ClickDetector)
	end
	
	local function CollectCash()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == "Part" and v:FindFirstChild("TouchInterest") and v:FindFirstChild("Weld") and v.Transparency == 1 then
				firetouchinterest(v, LocalPlayer.Character.HumanoidRootPart, 0)
			end
		end
	end
	
	local function GetAllOutsideItems()
		TeleportTo(CFrame.new(-199.240555, 30.0009422, -790.182739, 0.08340507, 2.48169538e-08, 0.996515751, -2.7112752e-09, 1, -2.46767993e-08, -0.996515751, -6.43658127e-10, 0.08340507))
		for i, v in pairs(game:GetService("Workspace").OutsideParts:GetChildren()) do
			fireclickdetector(v.ClickDetector)
		end
		LocalPlayer.Character.Humanoid:MoveTo(LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(-10, 0, 0))
	end
	
	local function BringAllEnemies()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
				v.HumanoidRootPart.Anchored = true
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
				v.HumanoidRootPart.Anchored = true
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
			end
			
			for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
				v.HumanoidRootPart.Anchored = true
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
			end
		end)
	end
	
	local function Noclip(State)
		LocalPlayer.Character.HumanoidRootPart.CanCollide = State
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("MeshPart") then
				v.CanCollide = State
			end
		end
		
		local function GetSecretEnding()
		for i, v in next, SecretEndingTable do
			Events.LarryEndingEvent:FireServer(v, true)
		end
	end
	
	local function GetGAppleBadge()
		if game:GetService("Workspace"):FindFirstChild("FallenTrees") then
			for i, v in pairs(game:GetService("Workspace").FallenTrees:GetChildren()) do
				for i = 1, 20 do
					if v:FindFirstChild("TreeHitPart") then
						Events.RoadMissionEvent:FireServer(1, v.TreeHitPart, 5)
					end
				end
			end
			task.wait(1)
			TeleportTo(CFrame.new(61.8781624, 29.4499969, -534.381165, -0.584439218, -1.05103076e-07, 0.811437488, -3.12853778e-08, 1, 1.06993674e-07, -0.811437488, 3.71451705e-08, -0.584439218))
			task.wait(.5)
			fireclickdetector(game:GetService("Workspace").GoldenApple.ClickDetector)
		else
			Notify("Error", "Golden Apple Has Not Spawned Yet, Please Wait Until the First Wave.", 'rbxassetid://4483345998', 3)
		end
		
		local function AntiMud(Touchable)
		for i, v in pairs(game:GetService("Workspace").BogArea.Bog:GetDescendants()) do
			if v.Name == "Mud" and v:IsA("Part") then
				if Touchable == true then
					v.CanTouch = false
				else 
					v.CanTouch = false
				end
			end
		end
	end
	
	local function SSAntiWind()
		if game:GetService("Workspace"):FindFirstChild("WavePart") then
			Delete(game:GetService("Workspace").WavePart)
		end
	end

	local function AntiWind()
		if game:GetService("Workspace"):FindFirstChild("WavePart") then
			game:GetService("Workspace").WavePart.CanTouch = false
		end
	end

local win = DiscordLib:Window("game")

local serv = win:Server("er hub game break in 2", "")



local btns = serv:Channel("main")

local playerName = game.Players.LocalPlayer.Name
btns:Label(playerName .. ", Welcome")

local game = serv:Channel("game break")

game:Button("Delete The game", function()
for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
				Delete(v)
			end
end)




game:Button("Delete The House", function()
for i, v in pairs(game:GetService("Workspace").TheHouse:GetChildren()) do
				if v.Name ~= "FloorLayer" then
					Delete(v)
				end
			end
		end
end)

local misc = serv:Channel("Overpowered")

local misc = misc:Dropdown("items",ItemsTable, function(bool)
if Value == 'Book' or Value == 'Phone' then
				game.StarterGui:SetCore("SendNotification",  { Title = "Warning"; Text = "Wont Work Unless You Own The Corresponding Gamepass."; Icon = "rbxassetid://4483345998"; Duration = 5; })
			end
			SelectedItem = Value
end)

misc:Button("get item", function()
GiveItem(SelectedItem)
end)

misc:Seperator()

misc:Button("get dog", function()
GetDog()
end)

misc:Button("Get Uncle", function()
GetUncle()
end)

misc:Button("Get Agent", function()
GetAgent()
end)

misc:Seperator()

misc:Button("Train Strength", function()
Train("Strength")
end)

misc:Button("Train speed", function()
Train("Speed")
end)

misc:Seperator()

misc:Button("Heal Yourself", function()
for i = 1, 10 do
				HealYourself()
			end
end)

misc:Toggle("loop Heal Yourself",false, function(bool)
getgenv().HealLoop = bool
			while HealLoop do
				HealYourself()
				task.wait(.1)
			end
end)

misc:Seperator()

misc:Button("Heal All", function()
HealAllPlayers()
end

misc:Toggle("loop heal all",false, function(bool)
getgenv().HealAllLoop = Value
			while HealAllLoop do
				HealAllPlayers()
				task.wait(3)
			end
end)

misc:Seperator()

local Position = nada
local sldr = sldrs:Slider("Table Food Slot", 0, 9, 400, function(t)
Position = t
end)

misc:Button("Spawn Pizza Box", function()
Events:WaitForChild("OutsideFood"):FireServer(6, {
				["item2"] = "Pizza",
				["placement"] = Position
end)

misc:Button("Spawn bloxy cola", function()
Events:WaitForChild("OutsideFood"):FireServer(6, {
				["item2"] = "BloxyPack",
				["placement"] = Position
			})
end)

misc:Seperator()

misc:Button("Lag/Crash The Server", function()
while Value == true do 
				for i = 1, 10 do
					for i = 1, 4 do
						Events:WaitForChild("OutsideFood"):FireServer(6, {
							["item2"] = "Pizza",
							["placement"] = i
						})
						Events:WaitForChild("OutsideFood"):FireServer(6, {
							["item2"] = "BloxyPack",
							["placement"] = i
						})
					end
				end
				task.wait(.1)
			end
		end
end)

misc:Button("Teleport To Private Lobby", function()
game:GetService("TeleportService"):Teleport(14775231477, LocalPlayer)
end)

misc:Seperator()

misc:Button("Get Secret Ending", function()
GetSecretEnding()
end)

misc:Button("Get All Equipment", function()
GiveAll()
end)

misc:Button("Get Best Tool", function()
GetBestTool()
end)

local tp = serv:Channel("teleport")

tp:Button("Boss Fight", function()
TeleportTo(CFrame.new(-1565.78772, -368.711945, -1040.66626, 0.0929690823, -1.97564436e-08, 0.995669007, -1.53269308e-08, 1, 2.1273511e-08, -0.995669007, -1.72383299e-08, 0.0929690823))
end)

tp:Button("shop", function()
TeleportTo(CFrame.new(-246.653229, 30.4500484, -847.319275, 0.999987781, -9.18427645e-08, -0.00494772941, 9.19905787e-08, 1, 2.96483353e-08, 0.00494772941, -3.01031164e-08, 0.999987781))
end)

tp:Button("Kitchen", function()
TeleportTo(CFrame.new(-249.753555, 30.4500484, -732.703125, -0.999205947, -1.97705017e-08, 0.0398429185, -2.00601384e-08, 1, -6.86967372e-09, -0.0398429185, -7.66347341e-09, -0.999205947))
end)

tp:Button("Fighting Arena", function()
TeleportTo(CFrame.new(-255.521988, 62.7139359, -723.436035, -0.0542500541, 4.28905356e-09, -0.998527408, 1.07862625e-08, 1, 3.70936082e-09, 0.998527408, -1.05691456e-08, -0.0542500541))
end)

tp:Button("The Gym", function()
TeleportTo(CFrame.new(-256.477448, 63.4500465, -840.825562, 0.999789953, 2.17116263e-08, 0.020495005, -2.15169358e-08, 1, -9.7199333e-09, -0.020495005, 9.27690191e-09, 0.999789953))
end)

tp:Button("Golden Apple", function()
TeleportTo(CFrame.new(61.8781624, 29.4499969, -534.381165, -0.584439218, -1.05103076e-07, 0.811437488, -3.12853778e-08, 1, 1.06993674e-07, -0.811437488, 3.71451705e-08, -0.584439218))
end)

tp:Button("Feeding Instructions", function()
TeleportTo(CFrame.new(-207.885056, 60.4500465, -830.583557, 0.118373089, 3.89876789e-08, -0.992969215, 3.47791551e-09, 1, 3.96783406e-08, 0.992969215, -8.15031065e-09, 0.118373089))
end)

tp:Button("Middle Room", function()
TeleportTo(CFrame.new(-209.951859, 30.4590473, -789.723877, -0.0485812724, 6.74905039e-08, 0.998819232, 1.19352916e-09, 1, -6.75122394e-08, -0.998819232, -2.08771045e-09, -0.0485812724))
end)

tp:Button("Scarry Mary Pillar", function()
TeleportTo(CFrame.new(-1501.49597, -325.156891, -1060.63367, -0.691015959, 7.43958628e-09, 0.722839475, -5.03345055e-09, 1, -1.51040194e-08, -0.722839475, -1.40754954e-08, -0.691015959))
end)

tp:Button("Cafeteria", function()
TeleportTo(game:GetService("Workspace").Final.Factory:FindFirstChild("Legs", true).CFrame)
end)

tp:Button("Rainbow Pizza Box", function()
TeleportTo(game:GetService("Workspace").RainbowPizzaBox.CFrame)
end)

tp:Seperator()

tp:Button("Secret Agent Bradley", function()
TeleportTo(CFrame.new(-281.792053, 95.4500275, -790.556946, -0.116918251, -7.95074726e-08, -0.993141532, -2.79918044e-09, 1, -7.97270019e-08, 0.993141532, -6.54155974e-09, -0.116918251))
end)

tp:Button("Twando The Dog", function()
TeleportTo(CFrame.new(-257.56839, 29.4499969, -910.452637, -0.238445505, 7.71292363e-09, 0.971155882, 1.2913591e-10, 1, -7.91029819e-09, -0.971155882, -1.76076387e-09, -0.238445505))
end)

tp:Button("Uncle Pete", function()
TeleportTo(CFrame.new(-257.56839, 29.4499969, -910.452637, -0.238445505, 7.71292363e-09, 0.971155882, 1.2913591e-10, 1, -7.91029819e-09, -0.971155882, -1.76076387e-09, -0.238445505))
end)

tp:Seperator()

tp:Button("Golden Crowbar", function()
TeleportTo(CFrame.new(-257.56839, 29.4499969, -910.452637, -0.238445505, 7.71292363e-09, 0.971155882, 1.2913591e-10, 1, -7.91029819e-09, -0.971155882, -1.76076387e-09, -0.238445505))
end)

tp:Button("Homeless Kid", function()
TeleportTo(CFrame.new(-79.4871826, 29.4477024, -932.782715, -0.215949073, 3.18771427e-08, 0.976404607, -7.60385461e-08, 1, -4.94647345e-08, -0.976404607, -8.49262562e-08, -0.215949073))
end)

tp:Button("Purple Mask", function() 
TeleportTo(CFrame.new(-147.337204, 29.4477005, -929.365295, 0.756779075, 4.53537341e-09, -0.653670728, 5.82708326e-09, 1, 1.36845468e-08, 0.653670728, -1.4165173e-08, 0.756779075))
end)

local pla = serv:Channel("player")

pla:Textbox("speed power", "Type here!", true, function(t)
LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

pla:Textbox("jump power", "Type here!", true, function(t)
LocalPlayer.Character.Humanoid.JumpPower = t
end)

pla:Button("back to normal", function()
LocalPlayer.Character.Humanoid.JumpPower = 50
LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

pla:Seperator()

pla:Toggle("Enable Noclip",false, function(bool)
getgenv().Noclipping = bool
			if Noclipping == true then
				spawn(function()
					while Noclipping == true do
						Noclip(false)
						task.wait(.05)
					end
				end)
			end
			if Noclipping == false then
				Noclip(true)
			end
end)

pla:Toggle("Enable Floating",false, function(bool)
getgenv().Float = bool
			if Float == true then
				spawn(function()
					while Float == true do
						Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
						task.wait(.05)
					end
				end)
			end
			if Float == false then
				Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 999, 0)
			end
end)

local combat = serv:Channel("combat")

combat:Button("Kill All Enemies", function()
KillEnemies()
end)

combat:Toggle("loop kill Enemies",false, function(bool)
getgenv().KillAllLoop = bool
			while KillAllLoop do
				for i = 1, 3 do
					KillEnemies()
				end
				task.wait(.1)
			end
end)

combat:Seperator()

combat:Button("break All Enemies", function()
BreakEnemies()
end)

combat:Toggle("loop break Enemies",false, function(bool)
getgenv().BreakAllLoop = bool
			while BreakAllLoop do
				BreakEnemies()
				task.wait(1)
			end
end)

local bad = serv:Channel("badge")

bad:Button("Dream Team (And The 3 + badge)", function()
GetDog()
			task.wait(5)
			GetAgent()
			task.wait(1)
			GetUncle()
end)

bad:Button("The Golden Apple", function()
GetGAppleBadge()
end)

bad:Button("So speed", function()
for i = 1, 5 do
				Train("Speed")
			end
end)

bad:Button("So Strong", function()
for i = 1, 5 do
				Train("Strength")
			end
end)

bad:Button("Delivery's Here", function()
GetAllOutsideItems()
end)

bad:Button("Reformed", function()
GetSecretEnding()
end)

bad:Button("Avoid Humiliation", function()
GiveAll()
			task.wait(4)
			GetDog()
			task.wait(5)
			GetAgent()
			task.wait(1)
			GetUncle()
end)

local m = serv:Channel("misc")

m:Button("Equip All tools", function()
EquipAllTools()
end)

m:Button("UnEquip All tools", function()
UnequipAllTools()
end)

m:Button("UnEquip All tools", function()
UnequipAllTools()
end)

m:Seperator()

m:Button("Delete Scary Mary", function()
game:GetService("Workspace"):FindFirstChild("Villainess") then
				game:GetService("Workspace").Villainess:Destroy()
			else
				warn("error")
				game.StarterGui:SetCore("SendNotification",  { Title = "error"; Text = "error"; Icon = ""; Duration = 3 })
			end
end)




m:Seperator()

m:Button("Get All Items From Outside", function()
GetAllOutsideItems()
end)

m:Toggle("Hidden Items ESP",false, function(bool)
if bool == true then
				for i, v in pairs(game:GetService("Workspace").Hidden:GetChildren()) do
					local highlight = Instance.new("Highlight")
					highlight.Parent = v
					highlight.FillColor = Color3.fromRGB(255, 0, 255)
					highlight.FillTransparency = 0
					highlight.OutlineTransparency = 0
					highlight.OutlineColor = Color3.fromRGB(0, 0, 255)
				end
			else
				for i, v in pairs(game:GetService("Workspace").Hidden:GetChildren()) do
					if v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
				end
			end
end)

game.StarterGui:SetCore("SendNotification",  { Title = "Er hub"; Text = "loaded thanks for using :)"; Icon = ""; Duration = 5; })
