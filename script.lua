	local val1 = 2
	local val2 = false
	
	local v1 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
	v1.Name = "SadlunovAutofarm"
	v1.ResetOnSpawn = false
	
	local i1 = Instance.new("ImageLabel", v1)
	i1.AnchorPoint = Vector2.new(0.5, 0.5)
	i1.Position = UDim2.new(0.5, 0, 0.5, 0)
	i1.Size = UDim2.new(0.285, 0, 0.54, 0)
	i1.BackgroundTransparency = 1
	i1.Image = "http://www.roblox.com/asset/?id=89777128616316"
	local i2 = Instance.new("UIGradient", i1)
	i2.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 1, 0),
		NumberSequenceKeypoint.new(0.2, 0.925, 0),
		NumberSequenceKeypoint.new(0.5, 0.535, 0),
		NumberSequenceKeypoint.new(0.8, 0.925, 0),
		NumberSequenceKeypoint.new(1, 1, 0)
	}
	i2.Offset = Vector2.new(-2, 0)
	game:GetService("TweenService"):Create(i1.UIGradient, TweenInfo.new(2.5), {Offset = Vector2.new(2, 0)}):Play()
	task.wait(2)
	i2.Offset = Vector2.new(-2, 0)
	game:GetService("TweenService"):Create(i1.UIGradient, TweenInfo.new(2.5), {Offset = Vector2.new(2, 0)}):Play()
	task.wait(2)
	i1.ImageTransparency = 1
	i2:Destroy()
	game:GetService("TweenService"):Create(i1, TweenInfo.new(1), {ImageTransparency = 0}):Play()
	task.wait(2)
	game:GetService("TweenService"):Create(i1, TweenInfo.new(0.75), {ImageTransparency = 1}):Play()
	task.wait(1)
	local v2 = Instance.new("Frame", v1)
	v2.AnchorPoint = Vector2.new(0.5, 0.5)
	v2.Position = UDim2.new(0.935, 0, 0.780, 0)
	v2.Size = UDim2.new(0.110, 0, 0.2, 0)
	v2.BorderSizePixel = 0
	v2.BackgroundColor3 = Color3.new(0, 0, 0)
	v2.BackgroundTransparency = 0.5
	local v3 = Instance.new("UICorner", v2)
	v3.CornerRadius = UDim.new(0.1, 0)
	local v4 = Instance.new("UIStroke", v2)
	v4.Thickness = 1.35
	local v4 = Instance.new("TextLabel", v2)
	v4.Text = "SADLUNOV AUTOFARM"
	v4.AnchorPoint = Vector2.new(0.5, 0.5)
	v4.Position = UDim2.new(0.5, 0, 0, 0)
	v4.BackgroundTransparency = 1
	v4.Font = Enum.Font.Gotham
	v4.TextScaled = true
	v4.Size = UDim2.new(1, 0, 0.23, 0)
	v4.TextColor3 = Color3.new(1, 1, 1)
	v4.Name = "1"
	local v5 = Instance.new("UIListLayout", v2)
	v5.Padding = UDim.new(0.05, 0)
	v5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	v5.VerticalAlignment = Enum.VerticalAlignment.Top
	local v6 = Instance.new("TextButton", v2)
	v6.Name = "OnOff"
	v6.Size = UDim2.new(0.895, 0, 0.235, 0)
	v6.TextScaled = true
	v6.Text = "Off"
	v6.BackgroundColor3 = Color3.new(1, 0.235294, 0.235294)
	local v7 = Instance.new("UICorner", v6)
	v7.CornerRadius = UDim.new(1, 0)
	local v8 = Instance.new("UITextSizeConstraint", v6)
	v8.MaxTextSize = 13
	v6.MouseButton1Click:Connect(function()
		if val2 == false then

		repeat wait()

			local u1 = game.Workspace:GetChildren()
			local u2 = nil
			
			
			for i, v in ipairs(u1) do
				if v.Name == "Bank2" or v.Name == "Hotel" or v.Name == "Workplace" or v.Name == "Mansion2" or v.Name == "BioLab" or v.Name == "Hospital3" or v.Name == "House2" or v.Name == "Factory" or v.Name == "MilBase" or v.Name == "PoliceStation" or v.Name == "Office3" then
					u2 = v.CoinContainer
					
					v6.BackgroundColor3 = Color3.new(0.372549, 1, 0.27451)
					v6.Text = "On"
					val2 = true

					for i, v in ipairs(u2:GetChildren()) do
						if v.Name == "Coin_Server" then

							local player = game.Players.LocalPlayer
							local character = player.Character

							function getDistance(part1, part2)
								return (part1.Position - part2.Position).magnitude
							end

							local nearestPart
							local nearestDistance = math.huge

							for i, v in ipairs(v:GetChildren()) do
								if v:IsA("MeshPart") then
									if val2 == true then

										local distance = getDistance(character.PrimaryPart, v.Parent)
										if distance < nearestDistance then
											nearestPart = part
											nearestDistance = distance
										end

										print(nearestDistance)

										local u3 = game.Players.LocalPlayer.Character
										local u4 = u3:WaitForChild("HumanoidRootPart")
										local u5 = game:GetService("TweenService")
										local u6 = (v.Parent.Position - u4.Position).Magnitude
										if u6 > 150 and u6 < 250 then
												val1 = 8
										elseif u6 > 70 and u6 < 150 then
												val1 = 6
										elseif u6 > 50 and u6 < 70 then
												val1 = 4
										elseif u6 > 30 and u6 < 50 then
												val1 = 3
										elseif u6 > 10 and u6 < 30 then
												val1 = 2
										elseif u6 > 5 and u6 < 10 then
												val1 = 1
										else
												val1 = 0.5
										end
										print(u6)
										print(val1)
										local u7 = u5:Create(u4, TweenInfo.new(val1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = nearestPart.CFrame}):Play()
										task.wait(val1)
									end
								end
							end
						end
					end
				end
			end
		until v6.Text == "Off"
		else

			v6.BackgroundColor3 = Color3.new(1, 0.2, 0.2)
			v6.Text = "Off"
			val2 = false

		end
	end)
