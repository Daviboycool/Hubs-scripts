local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()



game.StarterGui:SetCore("SendNotification",  { Title = "Er hub"; Text = "wait 5 seconds to load "; Icon = "rbxassetid://4483345998"; Duration = 5; })
wait(5)
game.StarterGui:SetCore("SendNotification",  { Title = "Er hub"; Text = "loaded "; Icon = "rbxassetid://4483345998"; Duration = 3 })




local plr = game.Players.LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid

local PhantomForcesWindow = Library:NewWindow("main")


local combos = PhantomForcesWindow:NewSection("auto combos")

combos:CreateButton("saitama", function()
local tool = plr.Backpack["Consecutive Punches"]
tool.Parent = chr

wait(1.6)
tool.Parent = plr.Backpack
local tool2 = plr.Backpack.Shove
tool2.Parent = chr
wait(1)
tool2.Parent = plr.Backpack

local args = {
    [1] = {
        ["Dash"] = Enum.KeyCode.W,
        ["Key"] = Enum.KeyCode.Q,
        ["Goal"] = "KeyPress"
    }
}

game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
end)

combos:CreateButton("garou", function()
local tool = plr.Backpack["Lethal Whirlwind Stream"]
tool.Parent = chr
wait(2.5)
tool.Parent = plr.Backpack
local tool2 = plr.Backpack["Flowing Water"]
tool2.Parent = chr
wait(2)
tool2.Parent = plr.Backpack
wait(3)
local args = {
    [1] = {
        ["Dash"] = Enum.KeyCode.W,
        ["Key"] = Enum.KeyCode.Q,
        ["Goal"] = "KeyPress"
    }
}
end)


local scripts = PhantomForcesWindow:NewSection("scripts")

scripts:CreateButton("aimbot", function()
loadstring(game:HttpGet('https://rentry.co/forkoritothegoat/raw'))()
end)

local hubs = PhantomForcesWindow:NewSection("hubs")

hubs:CreateButton("kadu hub", function()
getgenv().AutoReport = true -- turn off if executor blocks ReportAbuse function or if you just want it off
if getgenv().KadeHubLoaded ~= true then
    getgenv().KadeHubLoaded = true
   loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/Work/main/latest.lua"))()
else
    game.StarterGui:SetCore("SendNotification",  { Title = "KadeHub"; Text = "KadeHub is already executed!"; Icon = "rbxassetid://17893547380"; Duration = 15; })
end
end)

hubs:CreateButton("hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/ray-makk/main/Loader"))()
end)



local Credits = PhantomForcesWindow:NewSection("credits")

Credits:CreateButton("view credits", function()
game.StarterGui:SetCore("SendNotification",  { Title = "credits "; Text = "made by davi"; Icon = "rbxassetid://4483345998"; Duration = 15 })
end)

Credits:CreateButton("view support games", function()
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("game support")

local serv = win:Server("games", "rbxassetid://4483345998")

local btns = serv:Channel("games")

btns:Label("universal ")

end)
