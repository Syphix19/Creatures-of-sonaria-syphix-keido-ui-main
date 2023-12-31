--DISCORD SERVER : https://discord.gg/JG8dHW9XHK

getgenv().whatToSay = false
getgenv().alwaysDrink = false
getgenv().alwaysSniff = false
getgenv().LoopCollectingSnowmans = false
getgenv().autoCollectPresents = false
getgenv().autoGivePresents = false
getgenv().autoCompleteBakery  = false

--UI lib
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix19/ui-library/main/uiLib"))()


local GUI = Mercury:Create{
    Name = "Keido ui",
    Size = UDim2.fromOffset(480, 360),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/Syphix19/ui-library/blob/main/uiLib%20for%20CoS"
}

GUI:Prompt{
	Followup = false,
	Title = "Welcome",
	Text = "Select an automatism you want to activate here",
	Buttons = {
		Water = function()
			autoDrink()
		end,
		Sniff = function()
			autoSniff()
		end,
		NoThanks = function()
		
		end
	}
}

GUI:Notification{
	Text = "Syphix's unique hub is loading..",
	Duration = 1.9,
	Callback = function() end
}
wait(2)
GUI:Notification{
	Text = "Script succefully loaded",
	Duration = 3,
	Callback = function() end
}


GUI:Credit{
	Name = "Script creator",
	Description = "Syphix",
	Discord = "https://discord.gg/GGxzTWy2P7"
}

GUI:Credit{
	Name = "The one that inspired me to learn to exploit",
	Description = "Mangnex",
	Discord = "https://discord.gg/JAs59kUd6U"
}
----

--Tabs
local Tab = GUI:Tab{
	Name = "Christmas event",				     
	Icon = "rbxassetid://15582879663"     
}

local Tab2 = GUI:Tab{
	Name = "Trading server",				     
	Icon = "rbxassetid://15085628089"     
}


local Tab3 = GUI:Tab{
	Name = "Legacy version",				     
	Icon = "rbxassetid://15086125508"     
}	

local Tab4 = GUI:Tab{
	Name = "In-game",				     
	Icon = "rbxassetid://10042847331"     
}

local Tab5 = GUI:Tab{
	Name = "Other scripts (credits to mangnex)",				     
	Icon = "rbxassetid://15088750841"     
}

local Tab6 = GUI:Tab{
	Name = "Misc",				     
	Icon = "rbxassetid://15694410767"     
}

local Tab7 = GUI:Tab{
	Name = "Artifacts beta (wip)",				     
	Icon = "rbxassetid://15755618125"     
}
----


--Functions
function getPlayerPos()
	local plyr = game.Players.LocalPlayer
	if plyr.Character then
		return plyr.Character.HumanoidRootPart.Position
	end
		return false
end

function teleportTo(placeCFrame)
	local plyr = game.Players.LocalPlayer
	if plyr.Character then
		plyr.Character.HumanoidRootPart.CFrame = placeCFrame
	end
end

function autoDrink()
	getgenv().alwaysDrink = true
	while getgenv().alwaysDrink == true do
		local args = {
			[1] = workspace.Interactions.Lakes.Lake
		}
		game:GetService("ReplicatedStorage").Remotes.DrinkRemote:FireServer(unpack(args))
		wait(0.5)
	end
end

function DestroySnownmans()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix19/Creatures-of-sonaria-syphix-keido-light-christmas-ui/main/protected%20light%20christmas%20ui%20help%201.lua"))()
end

function collectPresents()
	local args = {
		[1] = "PresentWhite"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentWhite"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentWhite"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentGreen"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentGreen"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentGreen"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentRed"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentRed"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = "PresentRed"
	}
	
	game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
	wait(0.1)
end	

function autoCollectPresents()
	getgenv().autoCollectPresents = true
	while getgenv().autoCollectPresents == true do
		local args = {
			[1] = "PresentWhite"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentWhite"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentWhite"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentGreen"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentGreen"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentGreen"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentRed"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentRed"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = "PresentRed"
		}
		
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedDeliveryObjectRemote:InvokeServer(unpack(args))
		wait(0.1)
	end	

function deliverPresents()
		local args = {
			[1] = workspace.Event.DeliveryPointWhite
		}
		
		game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = workspace.Event.DeliveryPointGreen
		}
		
		game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = workspace.Event.DeliveryPointRed
		}
		
		game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
end
end

function deliverPresents()
	local args = {
		[1] = workspace.Event.DeliveryPointWhite
	}
	
	game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = workspace.Event.DeliveryPointGreen
	}
	
	game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = workspace.Event.DeliveryPointRed
	}
	
	game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
end	

function autoDeliverPresents()
	getgenv().autoGivePresents = true
	while getgenv().autoGivePresents == true do
		local args = {
			[1] = workspace.Event.DeliveryPointWhite
		}
		
		game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = workspace.Event.DeliveryPointGreen
		}
		
		game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
		wait(0.1)
		local args = {
			[1] = workspace.Event.DeliveryPointRed
		}
		
		game:GetService("ReplicatedStorage").Remotes.DeliveryDropoffEvent:FireServer(unpack(args))
		wait(0.1)
	end
end

function completeMyloBakery()
	game:GetService("ReplicatedStorage").Remotes.JerryLoadUp:FireServer()
	wait()
	game:GetService("ReplicatedStorage").Remotes.JerryUnbox:InvokeServer()	
end	

function autoCompleteMyloBakery()
	getgenv().autoCollectPresents = true
	while getgenv().autoCollectPresents == true do
		game:GetService("ReplicatedStorage").Remotes.JerryLoadUp:FireServer()
		wait()
		game:GetService("ReplicatedStorage").Remotes.JerryUnbox:InvokeServer()
	end	
end

function autoSniff()
	getgenv().alwaysSniff = true
    while getgenv().alwaysSniff == true do
        local args = {
            [1] = 1
        }
        
        game:GetService("ReplicatedStorage").Remotes.SetMissionRemote:FireServer(unpack(args))
        wait(1)        
    end
end

function doAll()
	collectPresents()
	deliverPresents()
	DestroySnownmans()
	completeMyloBakery()
end	

--- 

Tab:Button{
	Name = "Execute all",
	Description = "Execute every function shown below at the same time",
	Callback = function() 
	doAll()
	end
}

Tab:Button{
	Name = "Destroy all snowmans",
	Description = "Find all snowmans in the map and collect them",
	Callback = function() 
	DestroySnownmans()
	end
}


Tab:Button{
	Name = "Collect all present",
	Description = "Collect all presents in the map",
	Callback = function() 
		collectPresents()
	end
}


Tab:Button{
	Name = "Deliver all present",
	Description = "Deliver all presents in your inventory",
	Callback = function() 
		deliverPresents()
	end
}


Tab:Button{
	Name = "Complete Mylo bakery",
	Description = "Gives dough to Mylo and make cookies",
	Callback = function() 
		completeMyloBakery()
	end
}

Tab:Button{
	Name = "Auto complete bakery",
	Description = "Automaticly gives dough to Mylo and make cookies",
	Callback = function() 
	autoCompleteMyloBakery()
	end
}

Tab:Toggle{
	Name = "Auto collect presents",
	StartingState = false,
	Description = nil,
	Callback = function(bool) 
	getgenv().autoCollectPresents = bool
	if bool then
		autoCollectPresents()
	end
	end
}

Tab:Toggle{
	Name = "Auto deliver presents",
	StartingState = false,
	Description = nil,
	Callback = function(bool) 
	getgenv().autoGivePresents = bool
	if bool then
		autoDeliverPresents()
	end
	end
}

Tab2:Textbox({
   Name = "What do you want to send ?",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   getgenv().whatToSay = true
   while getgenv().whatToSay == true do
	   local args = {
    		[1] = (Text), --the message you wanna say (between " and the other ")
    		[2] = "All"
    		}
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
			wait(5)
   end
   end,
})


Tab2:Button({
   Name = "Stop talking",
   Callback = function()
   getgenv().whatToSay = false
   end,
})


Tab3:Button({
   Name = "Join legacy version(old cos)",
   Callback = function()
		game:GetService("ReplicatedStorage").Remotes.TeleportToLegacyRemote:InvokeServer()
   end,
})

Tab3:Textbox({
   Name = "PREMIUM : please enter your key (credits to mangnex)",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
	getgenv().Key = (Text)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Mangnex/Lycan-X-Hub/main/3y1e3_<430%2Bi3_O03%23t33%7D%26!3Esf3fpk%5EOOx%7DOO4%7D0Oi%7D_O7%7D%2304%7D%7DO%5E%7DEO!%7DfOk%7Dl04%5E!44%5E04i%5E747%5E%2343!%7D4k%5EE4!%5Ef4k%5El00EO04!70iE707E%2303E%7D0%5EEEilEfiVEliO!Oi4!0iikii7!%23i3!Ei%5E!!i!!f%5EE!l_)fO_0f0_if__7"))() 
   end,
})


Tab4:Toggle{
	Name = "Auto drink",
	StartingState = false,
	Description = nil,
	Callback = function(bool) 
	getgenv().alwaysDrink = bool
	if bool then
		autoDrink()
	end
	end
}

Tab4:Toggle{
	Name = "Auto do sniff missions (there is a cooldown)",
	StartingState = false,
	Description = nil,
	Callback = function(bool) 
	getgenv().alwaysSniff = bool
	if bool then
		autoSniff()
	end
	end
}

Tab4:Button({
    Name = "Place territory (anywhere, no cooldown)(keybind below)",
    Callback = function()
        local args = {
            [1] = nil --[[Vector3]]
        }
        game:GetService("ReplicatedStorage").Remotes.Territory:FireServer(unpack(args))
    end,
 })

Tab4:keybind({Callback = function()
    local args = {
        [1] = nil --[[Vector3]]
    }
    game:GetService("ReplicatedStorage").Remotes.Territory:FireServer(unpack(args))
end,})

Tab4:Button({
    Name = "Get current spawned token (keybind below)",
    Callback = function()
        local args = {
            [1] = nil --[[Vector3]]
        }
		game:GetService("ReplicatedStorage").Remotes.GetSpawnedTokenRemote:InvokeServer()
    end,
 })

 Tab5:keybind({Callback = function()
    local args = {
        [1] = nil --[[Vector3]]
    }
    game:GetService("ReplicatedStorage").Remotes.GetSpawnedTokenRemote:InvokeServer()
end,})


Tab5:Button({
	Name = "Recode",
   Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Mangnex/Lycan-X-Hub/main/Creature%20Of%20Sonaria%20Recode"))()
   end,
})

Tab5:Textbox({
   Name = "Legacy version PREMIUM : please enter your key",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
	getgenv().Key = (Text)
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Mangnex/Lycan-X-Hub/main/3y1e3_<430%2Bi3_O03%23t33%7D%26!3Esf3fpk%5EOOx%7DOO4%7D0Oi%7D_O7%7D%2304%7D%7DO%5E%7DEO!%7DfOk%7Dl04%5E!44%5E04i%5E747%5E%2343!%7D4k%5EE4!%5Ef4k%5El00EO04!70iE707E%2303E%7D0%5EEEilEfiVEliO!Oi4!0iikii7!%23i3!Ei%5E!!i!!f%5EE!l_)fO_0f0_if__7"))() 
   end,
})

Tab6:Button({
	Name = "Insta mud (must stand in mud before clicking)(keybind below)",
   Callback = function()
	local args = {
		[1] = workspace.Interactions.Mud
	}
	 
	game:GetService("ReplicatedStorage").Remotes.Mud:FireServer(unpack(args))
   end,
})

Tab6:keybind({Callback = function()
	local args = {
		[1] = workspace.Interactions.Mud
	}
	 
	game:GetService("ReplicatedStorage").Remotes.Mud:FireServer(unpack(args))
end,})

Tab6:Textbox({
	Name = "Create slots/spam slots (input full creature name)",
	PlaceholderText = "",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text1)
		local args = {
			[1] = (Text1)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CreateSlotRemote:InvokeServer(unpack(args))
		wait()
		local args = {
			[1] = (Text1)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CreateSlotRemote:InvokeServer(unpack(args))
		wait()
		local args = {
			[1] = (Text1)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CreateSlotRemote:InvokeServer(unpack(args))
		wait()
	end,
 })

 Tab6:Button{
	Name = "Get 13 storage slot",
	Description = "Resets when you leave EXEPT for the creatures you stored",
	Callback = function() 
		game.Players.LocalPlayer.PlayerGui.Data.StorageCap.Value = 13
	end
}

Tab6:Button{
	Name = "Teleport to bossfight",
	Description = "No damage/No bossfight ailment/Can lay and heal",
	Callback = function() 
		teleportTo(workspace.Terrain.EventArena.BossPortalEnd.CFrame)
	end
}

Tab7:Button{
	Name = "Hide scents",
	Description = "",
	Callback = function() 
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("HideScent"):FireServer()
	end
}

Tab7:Button{
	Name = "Teleport to safe place (play as korathos)",
	Description = "",
	Callback = function() 
		teleportTo(workspace.Terrain["Warden Shrines"].Verdant:GetChildren()[5].CFrame)
	end
}



local eigionDropdown
Tab7:Dropdown{
	Name = "Eigion",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureEigion) 
		eigionDropdown = itemCreatureEigion
		if eigionDropdown == 1 then
			local eigionLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Eigion.Value
			local eigionLocalText = eigionLocal .. "/1000"
			GUI:Notification{
				Title = "Eigion progression before executing :",
				Text = eigionLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%201%20(eigion)"))()
		elseif eigionDropdown == 2 then
			local eigionLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Eigion.Value
			local eigionLocalText = eigionLocal .. "/1000"
			GUI:Notification{
				Title = "Eigion progression :",
				Text = eigionLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local novusDropdown
Tab7:Dropdown{
	Name = "Novus",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureNovus) 
		novusDropdown = itemCreatureNovus
		if novusDropdown == 1 then
			local novusLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Novus.Value
			local novusLocalText = novusLocal .. "/1500"
			GUI:Notification{
				Title = "Novus progression before executing :",
				Text = novusLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%202%20(novus)"))()
		elseif novusDropdown == 2 then
			local novusLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Novus.Value
			local novusLocalText = novusLocal .. "/1500"
			GUI:Notification{
				Title = "Novus progression :",
				Text = novusLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local ardorDropdown
Tab7:Dropdown{
	Name = "Ardor",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureArdor) 
		ardorDropdown = itemCreatureArdor
		if ardorDropdown == 1 then
			local ardorLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Ardor.Value
			local ardorLocalText = ardorLocal .. "/2500"
			GUI:Notification{
				Title = "Ardor progression before executing :",
				Text = ardorLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%204%20(ardor)"))()
			GUI:Notification{
				Title = "Ardor progression :",
				Text = ardorLocalText,
				Duration = 3,
				Callback = function() end
			}
		elseif ardorDropdown == 2 then
			local ardorLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Ardor.Value
			local ardorLocalText = ardorLocal .. "/2500"
			GUI:Notification{
				Title = "Ardor progression :",
				Text = ardorLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local hellionDropdown
Tab7:Dropdown{
	Name = "Hellion",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureHellion) 
		hellionDropdown = itemCreatureHellion
		if hellionDropdown == 1 then
			local hellionLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Hellion.Value
			local hellionLocalText = hellionLocal .. "/50"
			GUI:Notification{
				Title = "Hellion progression before executing :",
				Text = hellionLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%203%20(hellion)"))()
		elseif hellionDropdown == 2 then
			local hellionLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Hellion.Value
			local hellionLocalText = hellionLocal .. "/50"
			GUI:Notification{
				Title = "Hellion progression :",
				Text = hellionLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local angelicDropdown
Tab7:Dropdown{
	Name = "Angelic",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureAngelic) 
		angelicDropdown = itemCreatureAngelic
		if angelicDropdown == 1 then
			local angelicLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Angelic.Value
			local angelicLocalText = angelicLocal .. "/150"
			GUI:Notification{
				Title = "Angelic progression before executing :",
				Text = angelicLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%207%20(angelic)"))()
		elseif angelicDropdown == 2 then
			local angelicLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Angelic.Value
			local angelicLocalText = angelicLocal .. "/150"
			GUI:Notification{
				Title = "Angelic progression :",
				Text = angelicLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local garraDropdown
Tab7:Dropdown{
	Name = "Garra",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureGarra) 
		garraDropdown = itemCreatureGarra
		if garraDropdown == 1 then
			local garraLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Garra.Value
			local garraLocalText = garraLocal .. "/250"
			GUI:Notification{
				Title = "Garra progression before executing :",
				Text = garraLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%208%20(garra)"))()
		elseif garraDropdown == 2 then
			local garraLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Garra.Value
			local garraLocalText = garraLocal .. "/250"
			GUI:Notification{
				Title = "Garra progression :",
				Text = garraLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local verdantDropdown
Tab7:Dropdown{
	Name = "Verdant",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureVerdant) 
		verdantDropdown = itemCreatureVerdant
		if verdantDropdown == 1 then
			local verdantLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Verdant.Value
			local verdantLocalText = verdantLocal .. "/500"
			GUI:Notification{
				Title = "Verdant progression before executing :",
				Text = verdantLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%206%20(verdant)"))()
		elseif verdantDropdown == 2 then
			local verdantLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Verdant.Value
			local verdantLocalText = verdantLocal .. "/500"
			GUI:Notification{
				Title = "Verdant progression :",
				Text = verdantLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

local borealDropdown
Tab7:Dropdown{
	Name = "Boreal",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Sacrifice food", 1},
		{"Progression", 2}
	},
	Callback = function(itemCreatureBoreal) 
		borealDropdown = itemCreatureBoreal
		if borealDropdown == 1 then
			local borealLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Boreal.Value
			local borealLocalText = borealLocal .. "/750"
			GUI:Notification{
				Title = "Boreal progression before executing :",
				Text = borealLocalText,
				Duration = 3,
				Callback = function() end
			}
			wait(0.5)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Syphix1919/Creatures-of-sonaria-keido-ui-beta-wip/main/wip%20script%20help%205%20(boreal)"))()
		elseif borealDropdown == 2 then
			local borealLocal = game:GetService("Players").LocalPlayer.PlayerGui.Data.WardenShrines.ShrineValues.Boreal.Value
			local borealLocalText = borealLocal .. "/750"
			GUI:Notification{
				Title = "Boreal progression :",
				Text = borealLocalText,
				Duration = 3,
				Callback = function() end
			}
		end	
	return end
}

