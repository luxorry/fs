if game.PlaceId == 8509951528 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Fighter Simulator! / https://discord.gg/h3ANkSPkyc", HidePremium = false, IntroText = "Luxorry Hub", SaveConfig = true, ConfigFolder = "LuxFolder"})

--Values
_G.AutoSell = true


--Functions

function AutoSell()
    while _G.AutoSell == true do
        wait(20)
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.Loot.RF.SellLoot:InvokeServer()
end
end

local Tab = Window:MakeTab({
	Name = "AutoSell",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "AutoSell",
	Default = false,
	Callback = function(Value)
        _G.AutoSell = Value
		AutoSell()
	end    
})



end
OrionLib:Init()
