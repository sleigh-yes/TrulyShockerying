local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

guns = {
   "Imaginary Gun",
   "USP",
   "XM1014",
   "MPX",
   "M24 Sniper",
   "UMP-9",
   "M4 Carbine",
   "Vector CRB", --I dont own SS. Unsure
   "P90", --I dont own GO. Unsure
   "M4A1", --I dont own MO. Unsure
   "Silenced TAR21",
   "USP Silenced",
   "Silver Intervention",
   "Silver Deagle",
   --Executive Weapon Chamber
   "Silver M4A1 Silenced",
   "Galil Special",
   "M4A1 Special",
   "Silenced TAR21 Special",
   "UMP45 Special",
   "P90 Special",
   "XM1014 Special",
   "Energy TPPS", --I dont own FD.
   "Energy BPS", --I dont own FD.
   "Gold F2000", --I dont own FD.
   "Energy PLMG",
   --FD Weapons 
   "Gold Barrett 50 Cal",
   "Gold Deagle",
   --Rebels
   "Warkeeper",
   "Macdonald",
   "Spartan",
   "Rorschach",
   "Phantom",
   "AK74",
   "Colt Python",
   "Spy USP",
   "AK74 Tactical",
   "Silenced CZ75",
   "VSS Vintorez",
   "Lupara",
   "RPK",
   "Tec-9",
   "Demonic AK-12",
   "DAO-12",
   "SW40",
   "Demonic ARX-160",
   "AA-12",
   --Rest are Unkown.
   "Moderator Shotgun", --Did this to fuck around
}

Hats = {
    
}

for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if v:IsA("Accessory") then
       print(v.Name)
       table.insert(Hats,v.Name)
    end
end

local Window = Rayfield:CreateWindow({
	Name = "Sleg Funky Project",
	LoadingTitle = "Rayfield NBTF Menu",
	LoadingSubtitle = "burger",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "SlegFunky", -- Create a custom folder for your hub/game
		FileName = "Sleg"
	},
        Discord = {
        	Enabled = false,
        	Invite = "N/A", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sleg Protection System",
		Subtitle = "Key System",
		Note = "Sleg should have given you a key",
		FileName = "SlegKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "MipIsAFurry"
	}
})

local Tab = Window:CreateTab("Gun Modding", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "Note:", Content = "I made this as a joke but it looks good now moment so uh yeah"})

local Button = Tab:CreateButton({
	Name = "Mod Gun (No Customize)",
	Callback = function()
		local nothingvalues = {
                "RecoilDecay",
                "RecoilMax",
                "RecoilMin",
                "ShotCooldown",
                "TotalRecoilMax",
                "MaxSpread",
                "MinSpread"
            }

            local infvalues = {"HitDamage", "MaxDistance"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(nothingvalues, v2.Name) ~= nil then
                            v2.Value = 0
                        end
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = 9999999999999999
                        end
                    end
                end
            end
	end,
})

local Section = Tab:CreateSection("Advanced Customization")

local Paragraph = Tab:CreateParagraph({Title = "Whoa a Text thing", Content = "I made this in a rush. Some things might not be working"})

local Section = Tab:CreateSection("Recoil Control")
--Recoil Control
local Input = Tab:CreateInput({
	Name = "RecoilMin",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"RecoilMin"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "RecoilMax",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"RecoilMax"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

--Spread Control
local Section = Tab:CreateSection("Spread Control")

local Input = Tab:CreateInput({
	Name = "MinSpread",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"MinSpread"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "MaxSpread",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"MaxSpread"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Section = Tab:CreateSection("The Other Customization")

local Input = Tab:CreateInput({
	Name = "ShotCooldown",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"ShotCooldown"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})


local Input = Tab:CreateInput({
	Name = "NumProjectiles",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"NumProjectiles"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
						if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
						end
					end
					local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "NumProjectiles"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = Text
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "NumProjectiles (shotgun only)",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"NumProjectiles"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							v2.Value = Text
                        end
                    end
                end
            end
	end,
})


local Section = Tab:CreateSection("Ammo Changer")

local Input = Tab:CreateInput({
	Name = "AmmoCapacity",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"AmmoCapacity"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "AmmoCapacity"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = Text
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "FullMagazineSize",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"FullMagazineSize"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "FullMagazineSize"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = Text
                end
            end
	end,
})
local Input = Tab:CreateInput({
	Name = "AmmoReserves",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"AmmoReserves"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "AmmoReserves"
					BruhMoment.Parent = v
					BruhMoment.Value = Text
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "CurrentAmmo",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"CurrentAmmo"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "CurrentAmmo"
					BruhMoment.Parent = v
					BruhMoment.Value = Text
                end
            end
	end,
})

local Section = Tab:CreateSection("Fire Mode")

local Button = Tab:CreateButton({
	Name = "Automatic",
	Callback = function()
            local infvalues = {"FireMode"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("StringValue")
					BruhMoment.Name = "FireMode"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = "Automatic"
                end
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Semiautomatic",
	Callback = function()
            local infvalues = {"FireMode"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("StringValue")
					BruhMoment.Name = "FireMode"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = "Semiautomatic"
                end
            end
	end,
})


local Button = Tab:CreateButton({
	Name = "Burst",
	Callback = function()
            local infvalues = {"FireMode"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(guns, v.Name) ~= nil then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end

                    local BruhMoment = Instance.new("StringValue")
					BruhMoment.Name = "FireMode"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = "Burst"
                end
            end
	end,
})

local Tab = Window:CreateTab("Advance Gun Modding", 4483362458) -- Title, Image

local GunTeller = Tab:CreateParagraph({Title = "Current Gun Selected", Content = "Nothing"})

local SlegGun = Tab:CreateDropdown({
	Name = "Gun Selected",
	Options = guns,
	CurrentOption = "No Gun Selected",
	Flag = "SlegGunSelected", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
	print(Option)
	GunTeller:Set({Title = "Current Gun Selected", Content = Option})
	end,
 })

 local Button = Tab:CreateButton({
	Name = "Mod Gun (No Customize) (Only Gun Selected)",
	Callback = function()
		local nothingvalues = {
                "RecoilDecay",
                "RecoilMax",
                "RecoilMin",
                "ShotCooldown",
                "TotalRecoilMax",
                "MaxSpread",
                "MinSpread"
            }

            local infvalues = {"HitDamage", "MaxDistance"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == SlegGun.CurrentOption then
                for i2, v2 in pairs(v.Configuration:GetChildren()) do
                    if table.find(nothingvalues, v2.Name) ~= nil then
						v2.Value = 0
					end
					if table.find(infvalues, v2.Name) ~= nil then
						v2.Value = 9999999999999999
					end
                end
            end
		end
	end,
})

local Section = Tab:CreateSection("Recoil Control")
--Recoil Control
local Input = Tab:CreateInput({
	Name = "RecoilMin",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"RecoilMin"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "RecoilMax",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"RecoilMax"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

--Spread Control
local Section = Tab:CreateSection("Spread Control")

local Input = Tab:CreateInput({
	Name = "MinSpread",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"MinSpread"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "MaxSpread",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"MaxSpread"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})

local Section = Tab:CreateSection("The Other Customization")

local Input = Tab:CreateInput({
	Name = "ShotCooldown",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"ShotCooldown"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
                    for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
                            v2.Value = Text
                        end
                    end
                end
            end
	end,
})


local Input = Tab:CreateInput({
	Name = "NumProjectiles",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"NumProjectiles"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
				for i2, v2 in pairs(v.Configuration:GetChildren()) do
					if table.find(infvalues, v2.Name) ~= nil then
						print("Found in ".. v.Name)
						v2:Destroy()
					end
				end
					local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "NumProjectiles"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = Text
                end
            end
	end,
})

local Section = Tab:CreateSection("Ammo Changer")

local Input = Tab:CreateInput({
	Name = "AmmoCapacity",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"AmmoCapacity"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "AmmoCapacity"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = Text
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "FullMagazineSize",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"FullMagazineSize"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "FullMagazineSize"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = Text
                end
            end
	end,
})
local Input = Tab:CreateInput({
	Name = "AmmoReserves",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"AmmoReserves"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "AmmoReserves"
					BruhMoment.Parent = v
					BruhMoment.Value = Text
                end
            end
	end,
})

local Input = Tab:CreateInput({
	Name = "CurrentAmmo",
	PlaceholderText = "Idk",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		local infvalues = {"CurrentAmmo"}
    	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("IntValue")
					BruhMoment.Name = "CurrentAmmo"
					BruhMoment.Parent = v
					BruhMoment.Value = Text
                end
            end
	end,
})

local Section = Tab:CreateSection("Fire Mode")

local Button = Tab:CreateButton({
	Name = "Automatic",
	Callback = function()
            local infvalues = {"FireMode"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("StringValue")
					BruhMoment.Name = "FireMode"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = "Automatic"
                end
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Semiautomatic",
	Callback = function()
            local infvalues = {"FireMode"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end
                    local BruhMoment = Instance.new("StringValue")
					BruhMoment.Name = "FireMode"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = "Semiautomatic"
                end
            end
	end,
})


local Button = Tab:CreateButton({
	Name = "Burst",
	Callback = function()
            local infvalues = {"FireMode"}

            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == SlegGun.CurrentOption then
					for i2, v2 in pairs(v.Configuration:GetChildren()) do
                        if table.find(infvalues, v2.Name) ~= nil then
							print("Found in ".. v.Name)
							v2:Destroy()
                        end
                    end

                    local BruhMoment = Instance.new("StringValue")
					BruhMoment.Name = "FireMode"
					BruhMoment.Parent = v.Configuration
					BruhMoment.Value = "Burst"
                end
            end
	end,
})

local Section = Tab:CreateSection("Cilent Sided Things")

local ColorPicker = Tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "GunColor", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
			if v.Name == SlegGun.CurrentOption then
			   for i2,v2 in pairs(v:GetDescendants()) do
				   if v2:IsA("MeshPart") then
					   v2.TextureID = "rbxassetid://0"
					   v2.Material = "ForceField"
					   print(Value)
					   v2.Color = Value
					end
				end
			end
		end
    end
})

local Tab = Window:CreateTab("Extra Things", 4483362458) -- Title, Image

local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer

TrackN = false

function CreateN(xPlayer, xHead)
	local ESP = Instance.new("BillboardGui", cmdlp.PlayerGui)
	local ESPSquare = Instance.new("Frame", ESP)
	local ESPText = Instance.new("TextLabel", ESP)
	ESP.Name = "ESPN"..xPlayer.Name
	ESP.Adornee = xHead
	ESP.AlwaysOnTop = true
	ESP.ExtentsOffset = Vector3.new(0, 1, 0)
	ESP.Size = UDim2.new(0, 5, 0, 5)
	ESPText.Name = "NAME"
	ESPText.BackgroundColor3 = Color3.new(255, 255, 255)
	ESPText.BackgroundTransparency = 1
	ESPText.BorderSizePixel = 0
	ESPText.Position = UDim2.new(0, 0, 0, -40)
	ESPText.Size = UDim2.new(1, 0, 10, 0)
	ESPText.Visible = true
	ESPText.ZIndex = 10
	ESPText.Font = Enum.Font.SourceSansSemibold
	ESPText.TextStrokeTransparency = 0.6
	ESPText.TextSize = 20
	ESPText.Text = xPlayer.Name
	ESPText.TextColor = xPlayer.TeamColor
end

function ClearN()
	for _,v in pairs(cmdlp.PlayerGui:GetChildren()) do
		if v.Name:sub(1,4) == "ESPN" and v:IsA("BillboardGui") then
			v:Destroy()
		end
	end
end

function FindN()
	ClearN()
	TrackN = true
	while wait() do
		if TrackN then
			ClearN()
			for i,v in pairs(cmdp:GetPlayers()) do
				if v ~= cmdlp then
					if v.Character and v.Character:FindFirstChild("Head") then
						CreateN(v, v.Character.Head, true)
					end
				end
			end
		end
		wait(1)
	end
end

local ESPNEnabled = false
function NameESP()
	FindN()
	ESPNEnabled = true
	repeat
		wait()
		if ESPNEnabled == true then
			FindN()
		end
	until ESPNEnabled == false
end

function NoNameESP()
	ESPNEnabled = false
	TrackN = false
	for i = 1,10 do
		ClearN()
		wait()
	end
end

local Toggle = Tab:CreateToggle({
    Name = "Toggle ESP",
    CurrentValue = false,
    Flag = "IESPO", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        if Value == true then
            NameESP()
            print("ESP is On")
        end
        if Value == false then
            NoNameESP()
            print("ESP turning off")
        end
    end,
 })
 
 local Toggle = Tab:CreateToggle({
    Name = "Toggle Camera",
    CurrentValue = false,
    Flag = "TCAMO", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        if Value == true then
            for i,v in pairs(cmdlp.PlayerGui:GetDescendants()) do
               if v:IsA("ScreenGui") and v.Name == "SecurityGui" then
                   print("Found Security Gui")
                   v.SecurityFeed.REC_TextLabel.Text = "SLEG"
                   v.SecurityFeed.MenuBtn.Visible = false
                   v.SecurityFeed.System_TextLabel.Text = "SYSTEM IS POWERED BY PROTONIC FAST CAM"
                   v.Enabled = true
                end
            end
        elseif Value == false then
            for i,v in pairs(cmdlp.PlayerGui:GetDescendants()) do
               if v:IsA("ScreenGui") and v.Name == "SecurityGui" then
                   print("Found Security Gui")
                   v.SecurityFeed.REC_TextLabel.Text = "REC"
                   v.SecurityFeed.MenuBtn.Visible = true
                   v.SecurityFeed.System_TextLabel.Text = "SYSTEM IS POWERED BY PYROWH CORPORATION"
                   v.Enabled = false
                end
            end
        end
    end,
 })
 
 
 
 

local Tab = Window:CreateTab("Morph Control", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
	Name = "Remove Tag",
	Callback = function()
		local model = game.Players.LocalPlayer.Character.HumanoidRootPart.MainNametag
        local childs = model:GetDescendants()
        model.Frame.Plaque:Destroy()
            for I,v in pairs(childs) do 
	            if v:IsA("TextLabel") and v.Name ~= "PlayerAuthority" then 
		            v:Destroy()
        	end
        end
	end,
})

local Section = Tab:CreateSection("Hat Control")

local HatSelected = "sleg"

local Dropdown = Tab:CreateDropdown({
   Name = "Hat Control",
   Options = Hats,
   CurrentOption = "Idk",
   Flag = "HatControl", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
   print(Option)
   HatSelected = Option
   end,
})

local Button = Tab:CreateButton({
   Name = "Disable Selected Hat",
   Callback = function()
       -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = HatSelected,
            [2] = false
        }

        game:GetService("ReplicatedStorage").Events.ToggleAccessory:FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Enable Selected Hat",
   Callback = function()
       -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = HatSelected,
            [2] = true
        }

        game:GetService("ReplicatedStorage").Events.ToggleAccessory:FireServer(unpack(args))
   end,
})


local Section = Tab:CreateSection("Main Body Control")

local Button = Tab:CreateButton({
	Name = "Remove All Morph Parts",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})


local Button = Tab:CreateButton({
	Name = "Remove Head Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "Head" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Torso Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LowerTorso" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "UpperTorso" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Section = Tab:CreateSection("Arm Morph Control")

local Button = Tab:CreateButton({
	Name = "Remove Right Arm Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightHand" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightLowerArm" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightUpperArm" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Left Arm Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftHand" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftLowerArm" then 
		        v:ClearAllChildren()
	        end
        end
        
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftUpperArm" then 
		        v:ClearAllChildren()
	        end
        end
    end,
})

local Section = Tab:CreateSection("Leg Morph Control")

local Button = Tab:CreateButton({
	Name = "Remove Right Leg Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightFoot" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightLowerLeg" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "RightUpperLeg" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Left Leg Morph",
	Callback = function()
		local model = game.Players.LocalPlayer.Character
        local childs = model:GetDescendants()
        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftFoot" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftUpperLeg" then 
		        v:ClearAllChildren()
	        end
        end

        for I,v in pairs(childs) do 
	        if v:IsA("Model") and v.Name == "MorphParts" and v.Parent.Name == "LeftLowerLeg" then 
		        v:ClearAllChildren()
	        end
        end
	end,
})


local Tab = Window:CreateTab("Fast Tool Grabber", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "For this to work:", Content = "Open :tools then close it for this to work. Only need to do this once"})

local Section = Tab:CreateSection("Tools")

local Button = Tab:CreateButton({
	Name = "Get Level 99 Keycard",
	Callback = function()
	    local args = {
        [1] = 6
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Moderator Shotgun",
	Callback = function()
	    local args = {
        [1] = 1
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Binoculars",
	Callback = function()
	    local args = {
        [1] = 5
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Virus Kit",
	Callback = function()
	    local args = {
        [1] = 4
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get System Repair Kit",
	Callback = function()
	    local args = {
        [1] = 3
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Button = Tab:CreateButton({
	Name = "Get Maglight",
	Callback = function()
	    local args = {
        [1] = 2
    }

    local model = game:GetService("JointsService")
    local childs = model:GetDescendants()

    for I,v in pairs(childs) do 
	    if v:IsA("RemoteEvent") and v.Name == "GetTool" then 
		    v:FireServer(unpack(args))
	    end
    end
	end
})

local Tab = Window:CreateTab("Teleport to Places", 4483362458) -- Title, Image

local PlayerS = game:GetService("Players")
local char = PlayerS.LocalPlayer.Character

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local Section = Tab:CreateSection("Facility")

local Button = Tab:CreateButton({
	Name = "Launch Control",
	Callback = function()
		local tpX,tpY,tpZ = 684, 374, -416
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Launch Control Roof",
	Callback = function()
		local tpX,tpY,tpZ = 610, 445, -425
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Ground Zero",
	Callback = function()
		local tpX,tpY,tpZ = -333, 241, -377
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Core Control",
	Callback = function()
		local tpX,tpY,tpZ = 1104, 298, 1092
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Power Center",
	Callback = function()
		local tpX,tpY,tpZ = 1281, 334, 111
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Data Center",
	Callback = function()
		local tpX,tpY,tpZ = 1340, 334, -345
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Cafeteria",
	Callback = function()
		local tpX,tpY,tpZ = 1055, 334, -422
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Hospital",
	Callback = function()
		local tpX,tpY,tpZ = 1096, 334, -689
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Barracks",
	Callback = function()
		local tpX,tpY,tpZ = 745, 371, -90
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Receiving Center",
	Callback = function()
		local tpX,tpY,tpZ = 745, 371, -90
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Maintenance Offices",
	Callback = function()
		local tpX,tpY,tpZ = 1663, 334, -423
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Logistics Checkpoint",
	Callback = function()
		local tpX,tpY,tpZ = 1415, 334, -2477
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Executive Area")

local Button = Tab:CreateButton({
	Name = "Armory (Council)",
	Callback = function()
		local tpX,tpY,tpZ = 775, 334, -804
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Armory (Director)",
	Callback = function()
		local tpX,tpY,tpZ = 775, 334, -804
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Garage",
	Callback = function()
		local tpX,tpY,tpZ = 813, 334, -742
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Executive Offices",
	Callback = function()
		local tpX,tpY,tpZ = 736, 381, -759
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Brodcasting Room",
	Callback = function()
		local tpX,tpY,tpZ = 721, 381, -690
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Master Teleport Room",
	Callback = function()
		local tpX,tpY,tpZ = 1161, 19, -713
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Emergency Elevator",
	Callback = function()
		local tpX,tpY,tpZ = 1099, 422, -824
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Security")

local Button = Tab:CreateButton({
	Name = "Internal Checkpoint",
	Callback = function()
		local tpX,tpY,tpZ = 1329, 334, -894
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "External Checkpoint",
	Callback = function()
		local tpX,tpY,tpZ = 1367, 334, -1305
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Security Offices",
	Callback = function()
		local tpX,tpY,tpZ = 1338, 398, -641
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "External Gate",
	Callback = function()
		local tpX,tpY,tpZ = 1484, 334, -1328
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Internal Gate",
	Callback = function()
		local tpX,tpY,tpZ = 1484, 334, -857
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Internal Gate Mk2",
	Callback = function()
		local tpX,tpY,tpZ = 981, 334, -979
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Watchtowers")

local Button = Tab:CreateButton({
	Name = "Watchtower 1",
	Callback = function()
		local tpX,tpY,tpZ = 1685, 370, -1067
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 2",
	Callback = function()
		local tpX,tpY,tpZ = 788, 375, -1410
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 3",
	Callback = function()
		local tpX,tpY,tpZ = 517, 370, -931
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 4",
	Callback = function()
		local tpX,tpY,tpZ = 227, 370, 438
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 5",
	Callback = function()
		local tpX,tpY,tpZ = 1381, 411, -1272
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Watchtower 6",
	Callback = function()
		local tpX,tpY,tpZ = 1005, 360, -7
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Other Things")

local Button = Tab:CreateButton({
	Name = "Thanks for Playing",
	Callback = function()
		local tpX,tpY,tpZ = 227, 370, 438
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Old Bunker Teleported Room",
	Callback = function()
		local tpX,tpY,tpZ = -640, 334, 732
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Top of the Connection Tower",
	Callback = function()
		local tpX,tpY,tpZ = 1338, 570, -333
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Tower?",
	Callback = function()
		local tpX,tpY,tpZ = 1670, 379, -678
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Section = Tab:CreateSection("Rebellion")

local Button = Tab:CreateButton({
	Name = "Gas Station",
	Callback = function()
		local tpX,tpY,tpZ = 963, 359, -2795
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Pirate Brodcast",
	Callback = function()
		local tpX,tpY,tpZ = 968, 409, -2824
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})

local Button = Tab:CreateButton({
	Name = "Underground Gas Station",
	Callback = function()
		local tpX,tpY,tpZ = 1011, 325, -2830
            if char and getRoot(char) then
                getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
            end
	end,
})


--Bozo.
Rayfield:LoadConfiguration()
