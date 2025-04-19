local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "SADLUNOV MM2",
	LoadingTitle = "Sadlunov SCRIPTS",
	LoadingSubtitle = "By sadlunov",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "FileName"
	},
	Discord = {
		Enabled = false,
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sadlunov KeySystem",
		Subtitle = "Enter key",
		Note = "Get key: https://t.me/sadlunovFamily",
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"SadlunovTop"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

local MainTab = Window:CreateTab("📌 Main", nil)
local MainSection1 = MainTab:CreateSection("Autofarm 2025")

local val1 = false
local val2 = 0

local Toggle = MainTab:CreateToggle({
   Name = "EggFarm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   print("its okey man")
	if val1 == false then
	val1 = true
	print("false? start!")
			repeat wait()

						local u2 = game.Workspace:GetDescendants()
						for i, f in ipairs(u2) do
							if f.Name == "Coin_Server" then

								for i, v in ipairs(f:GetChildren()) do
									if v:IsA("MeshPart") then

										local SelectedPart = {false, false}
											if v:IsA("MeshPart") then
												local Formula = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position)
													local success, errormessage = pcall(function()
														if Formula.Magnitude < SelectedPart[1] then
															SelectedPart[1] = Formula.Magnitude
															SelectedPart[2] = v
														end
													end)
													if not success then
														SelectedPart[1] = Formula.Magnitude
														SelectedPart[2] = v
													end
											end

										if val1 == true then
										print("gooo")

											local u3 = game.Players.LocalPlayer.Character
											local u4 = u3:WaitForChild("HumanoidRootPart")
											local u5 = game:GetService("TweenService")
											local u6 = (v.Position - u4.Position).Magnitude
											if u6 > 150 and u6 < 250 then
												val2 = 8
											elseif u6 > 70 and u6 < 150 then
												val2 = 5
											elseif u6 > 50 and u6 < 70 then
												val2 = 3
											elseif u6 > 30 and u6 < 50 then
												val2 = 2.5
											elseif u6 > 10 and u6 < 30 then
												val2 = 1.5
											elseif u6 > 5 and u6 < 10 then
												val2 = 1.5
											else
												val2 = 1
											end
											print(u6)
											print(val1)
											local u7 = u5:Create(u4, TweenInfo.new(val2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = SelectedPart[2].Parent.CFrame}):Play()
											print("tweened")
											task.wait(val2)
										end
									end
								end
							end
						end
				
			until val1 == false
	else
		val1 = false
		print("setted false")
	end
   end,
})
