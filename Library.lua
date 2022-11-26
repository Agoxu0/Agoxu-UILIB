local Library = {}
function Library:CreateWindow(Name)
	for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
		if v.Name == "Agoxu UILIB" then
			v:Destroy()
		end
	end
	local GUI = {}
	--game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	GUI["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
	GUI["1"]["Name"] = [[Agoxu UILIB]];

	-- StarterGui.Shitty's GUI.Main
	GUI["2"] = Instance.new("Frame", GUI["1"]);
	GUI["2"]["BorderSizePixel"] = 0;
	GUI["2"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
	GUI["2"]["Size"] = UDim2.new(0, 150, 0, 40);
	GUI["2"]["Position"] = UDim2.new(0.029296875, 0, 0.04111405834555626, 0);
	GUI["2"]["Name"] = [[Main]];

	-- StarterGui.Shitty's GUI.Main.UICorner
	GUI["3"] = Instance.new("UICorner", GUI["2"]);
	GUI["3"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.Shitty's GUI.Main.Title
	GUI["4"] = Instance.new("TextLabel", GUI["2"]);
	GUI["4"]["TextWrapped"] = true;
	GUI["4"]["BorderSizePixel"] = 0;
	GUI["4"]["RichText"] = true;
	GUI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	-- GUI["4"]["FontFace"] = ;
	GUI["4"]["TextSize"] = 12;
	GUI["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["4"]["Size"] = UDim2.new(0.75, 0, 1, 0);
	GUI["4"]["Text"] = Name;
	GUI["4"]["Name"] = [[Title]];
	GUI["4"]["Font"] = Enum.Font.Unknown;
	GUI["4"]["BackgroundTransparency"] = 1;
	GUI["4"].TextTruncate = Enum.TextTruncate.AtEnd
	
	-- StarterGui.Shitty's GUI.Main.OpenList
	GUI["5"] = Instance.new("TextButton", GUI["2"]);
	GUI["5"]["Active"] = false;
	GUI["5"]["TextSize"] = 18;
	GUI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	-- GUI["5"]["FontFace"] = ;
	GUI["5"]["Selectable"] = false;
	GUI["5"]["AnchorPoint"] = Vector2.new(1, 0);
	GUI["5"]["Size"] = UDim2.new(0.25, 0, 1, 0);
	GUI["5"]["Name"] = [[OpenList]];
	GUI["5"]["Text"] = [[\/]];
	GUI["5"]["Font"] = Enum.Font.Unknown;
	GUI["5"]["Position"] = UDim2.new(1, 0, 0, 0);
	GUI["5"]["BackgroundTransparency"] = 1;

	-- StarterGui.Shitty's GUI.Main.Container
	GUI["6"] = Instance.new("Frame", GUI["2"]);
	GUI["6"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
	GUI["6"]["AnchorPoint"] = Vector2.new(1, 0);
	GUI["6"]["Size"] = UDim2.new(1, 0, 0, 250);
	GUI["6"]["Position"] = UDim2.new(1, 0, 0, 40);
	GUI["6"]["Name"] = [[Container]];
	GUI["6"].Visible = false
	-- StarterGui.Shitty's GUI.Main.Container.UICorner
	GUI["7"] = Instance.new("UICorner", GUI["6"]);
	GUI["7"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.Shitty's GUI.Main.Container.b
	GUI["8"] = Instance.new("Frame", GUI["6"]);
	GUI["8"]["ZIndex"] = 10;
	GUI["8"]["BorderSizePixel"] = 0;
	GUI["8"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
	GUI["8"]["AnchorPoint"] = Vector2.new(1, 0);
	GUI["8"]["Size"] = UDim2.new(1, 0, 0, 1);
	GUI["8"]["Position"] = UDim2.new(1, 0, 0, 0);
	GUI["8"]["Name"] = [[b]];

	-- StarterGui.Shitty's GUI.Main.Container.a
	GUI["9"] = Instance.new("Frame", GUI["6"]);
	GUI["9"]["BorderSizePixel"] = 0;
	GUI["9"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
	GUI["9"]["AnchorPoint"] = Vector2.new(1, 0);
	GUI["9"]["Size"] = UDim2.new(1, 0, 0, 20);
	GUI["9"]["Position"] = UDim2.new(1, 0, 0, -5);
	GUI["9"]["Name"] = [[a]];

	-- StarterGui.Shitty's GUI.Main.Container.ScrollingFrame
	GUI["a"] = Instance.new("ScrollingFrame", GUI["6"]);
	GUI["a"]["Active"] = true;
	GUI["a"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
	GUI["a"]["BorderSizePixel"] = 0;
	GUI["a"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
	GUI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	GUI["a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
	GUI["a"]["BackgroundTransparency"] = 1;
	GUI["a"]["Size"] = UDim2.new(1, 0, 1, 0);
	GUI["a"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	GUI["a"]["ScrollBarThickness"] = 0;
	-- StarterGui.Shitty's GUI.Main.Container.ScrollingFrame.UIPadding
	GUI["23"] = Instance.new("UIPadding", GUI["a"]);
	GUI["23"]["PaddingTop"] = UDim.new(0, 6);
	GUI["23"]["PaddingBottom"] = UDim.new(0, 6);

	-- StarterGui.Shitty's GUI.Main.Container.ScrollingFrame.UIListLayout
	GUI["24"] = Instance.new("UIListLayout", GUI["a"]);
	GUI["24"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	GUI["24"]["Padding"] = UDim.new(0, 6);
	GUI["24"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	local cont = GUI["6"]
	GUI["5"].MouseButton1Up:Connect(function()
		if cont.Visible == true then
			cont.Visible = false
			GUI["5"].Text = [[\/]]
		else
			cont.Visible = true
			GUI["5"].Text = [[/\]]
		end
	end)
	do --draggable
	local UserInputService = game:GetService("UserInputService")

	local gui = GUI["2"]

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	end
	function GUI:CreateButton(Name,callback)
		local Button = {}
		local MouseHovering = false
		local callback = callback or function() end
		-- StarterButton.Shitty's Button.Main.Container.ScrollingFrame.Button
		Button["16"] = Instance.new("Frame", GUI["a"]);
		Button["16"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
		Button["16"]["Size"] = UDim2.new(1, -10, 0, 40);
		Button["16"]["Visible"] = true;
		Button["16"]["Name"] = [[Button]];

		-- StarterButton.Shitty's Button.Main.Container.ScrollingFrame.Button.UIPadding
		Button["17"] = Instance.new("UIPadding", Button["16"]);
		Button["17"]["PaddingLeft"] = UDim.new(0, 6);

		-- StarterButton.Shitty's Button.Main.Container.ScrollingFrame.Button.UICorner
		Button["18"] = Instance.new("UICorner", Button["16"]);
		Button["18"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterButton.Shitty's Button.Main.Container.ScrollingFrame.Button.ImageLabel
		Button["19"] = Instance.new("ImageLabel", Button["16"]);
		Button["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Button["19"]["AnchorPoint"] = Vector2.new(1, 0);
		Button["19"]["Image"] = [[rbxassetid://11630534027]];
		Button["19"]["Size"] = UDim2.new(0.30000001192092896, 0, 1, 0);
		Button["19"]["BackgroundTransparency"] = 1;
		Button["19"]["Position"] = UDim2.new(1, 0, 0, 0);

		-- StarterButton.Shitty's Button.Main.Container.ScrollingFrame.Button.Title
		Button["1a"] = Instance.new("TextLabel", Button["16"]);
		Button["1a"]["TextWrapped"] = true;
		Button["1a"]["RichText"] = true;
		Button["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		-- Button["1a"]["FontFace"] = ;
		Button["1a"]["TextSize"] = 12;
		Button["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Button["1a"]["AnchorPoint"] = Vector2.new(1, 0);
		Button["1a"]["Size"] = UDim2.new(1, -43, 1, 0);
		Button["1a"]["Text"] = [[Title]];
		Button["1a"]["Name"] = [[Title]];
		Button["1a"]["Font"] = Enum.Font.Ubuntu;
		Button["1a"]["BackgroundTransparency"] = 1;
		Button["1a"]["Position"] = UDim2.new(1, -50, 0, 0);

		-- StarterButton.Shitty's Button.Main.Container.ScrollingFrame.Button.UIStroke
		Button["1b"] = Instance.new("UIStroke", Button["16"]);
		Button["1b"]["Color"] = Color3.fromRGB(101, 101, 101);
		Button["1b"]["Thickness"] = 2;
		Button["1a"].Text = Name
		Button["16"].MouseEnter:Connect(function ()
			MouseHovering = true
			Button["16"].Transparency = 0.6
		end)

		Button["16"].MouseLeave:Connect(function ()
			MouseHovering = false
			Button["16"].Transparency = 0
		end)
		game:GetService("UserInputService").InputEnded:Connect(function (input, gameProcessed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and MouseHovering then
				callback()
			end
		end)
		Button["1a"].TextTruncate = Enum.TextTruncate.AtEnd
		return Button
	end
	function GUI:CreateTextBox(Name,callback)
		local TextBox = {}
		local callback = callback or function() end
		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox
		TextBox["b"] = Instance.new("Frame", GUI["a"]);
		TextBox["b"]["Active"] = true;
		TextBox["b"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
		TextBox["b"]["Size"] = UDim2.new(1, -10, 0, 40);
		TextBox["b"]["Selectable"] = true;
		TextBox["b"]["Name"] = [[TextBox]];
		TextBox["b"].Visible = true

		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox.UICorner
		TextBox["c"] = Instance.new("UICorner", TextBox["b"]);
		TextBox["c"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox.UIPadding
		TextBox["d"] = Instance.new("UIPadding", TextBox["b"]);
		TextBox["d"]["PaddingLeft"] = UDim.new(0, 6);

		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox.TextBox
		TextBox["e"] = Instance.new("TextBox", TextBox["b"]);
		TextBox["e"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
		TextBox["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		TextBox["e"]["TextSize"] = 12;
		TextBox["e"]["BackgroundColor3"] = Color3.fromRGB(77, 77, 77);
		-- TextBox["e"]["FontFace"] = ;
		TextBox["e"]["AnchorPoint"] = Vector2.new(1, 0.5);
		TextBox["e"]["Size"] = UDim2.new(0.44999998807907104, 0, 0.75, 0);
		TextBox["e"]["Position"] = UDim2.new(1, -5, 0.5, 0);
		TextBox["e"]["Font"] = Enum.Font.Ubuntu;

		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox.TextBox.UICorner
		TextBox["f"] = Instance.new("UICorner", TextBox["e"]);
		TextBox["f"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox.Title
		TextBox["10"] = Instance.new("TextLabel", TextBox["b"]);
		TextBox["10"]["TextWrapped"] = true;
		TextBox["10"]["RichText"] = true;
		TextBox["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		-- TextBox["10"]["FontFace"] = ;
		TextBox["10"]["TextSize"] = 12;
		TextBox["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		TextBox["10"]["Size"] = UDim2.new(0.5, 0, 1, 0);
		TextBox["10"]["Text"] = [[Title]];
		TextBox["10"]["Name"] = [[Title]];
		TextBox["10"]["Font"] = Enum.Font.Unknown;
		TextBox["10"]["BackgroundTransparency"] = 1;

		-- StarterTextBox.Shitty's TextBox.Main.Container.ScrollingFrame.TextBox.UIStroke
		TextBox["11"] = Instance.new("UIStroke", TextBox["b"]);
		TextBox["11"]["Color"] = Color3.fromRGB(101, 101, 101);
		TextBox["11"]["Thickness"] = 2;
		TextBox["10"].Text = Name
		TextBox["e"].FocusLost:Connect(function()
			callback(TextBox["e"].Text)
		end)
		TextBox["10"].TextTruncate = Enum.TextTruncate.AtEnd
		return TextBox
	end
	function GUI:CreateLabel(text)
		local Label = {}
		-- StarterLabel.Shitty's Label.Main.Container.ScrollingFrame.Label
		Label["12"] = Instance.new("TextLabel", GUI["a"]);
		Label["12"]["TextWrapped"] = true;
		Label["12"]["RichText"] = true;
		Label["12"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
		-- Label["12"]["FontFace"] = ;
		Label["12"]["Selectable"] = true;
		Label["12"]["TextSize"] = 12;
		Label["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Label["12"]["Visible"] = true;
		Label["12"]["Size"] = UDim2.new(1, -10, 0, 40);
		Label["12"]["Active"] = true;
		Label["12"]["Name"] = [[Label]];
		Label["12"]["Font"] = Enum.Font.Unknown;

		-- StarterLabel.Shitty's Label.Main.Container.ScrollingFrame.Label.UICorner
		Label["13"] = Instance.new("UICorner", Label["12"]);
		Label["13"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterLabel.Shitty's Label.Main.Container.ScrollingFrame.Label.UIPadding
		Label["14"] = Instance.new("UIPadding", Label["12"]);
		Label["14"]["PaddingLeft"] = UDim.new(0, 6);

		-- StarterLabel.Shitty's Label.Main.Container.ScrollingFrame.Label.UIStroke
		Label["15"] = Instance.new("UIStroke", Label["12"]);
		Label["15"]["Color"] = Color3.fromRGB(101, 101, 101);
		Label["15"]["Thickness"] = 2;
		Label["15"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		Label["12"].Text = text
		Label["12"].TextTruncate = Enum.TextTruncate.AtEnd
		return Label
	end
	function GUI:CreateToggle(Name,callback)
		local Toggle = {}
		local MouseHovering = false
		local tr = true
		local callback = callback or function() end
		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle
		Toggle["1c"] = Instance.new("Frame", GUI["a"]);
		Toggle["1c"]["Active"] = true;
		Toggle["1c"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
		Toggle["1c"]["Size"] = UDim2.new(1, -10, 0, 40);
		Toggle["1c"]["Selectable"] = true;
		Toggle["1c"]["Name"] = [[Toggle]];

		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle.UIPadding
		Toggle["1d"] = Instance.new("UIPadding", Toggle["1c"]);
		Toggle["1d"]["PaddingLeft"] = UDim.new(0, 6);

		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle.Toggle
		Toggle["1e"] = Instance.new("Frame", Toggle["1c"]);
		Toggle["1e"]["BorderSizePixel"] = 0;
		Toggle["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
		Toggle["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Toggle["1e"]["Size"] = UDim2.new(0.25, 0, 1, -5);
		Toggle["1e"]["Position"] = UDim2.new(0.8500000238418579, 0, 0.5, 0);
		Toggle["1e"]["Name"] = [[Toggle]];

		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle.Toggle.UICorner
		Toggle["1f"] = Instance.new("UICorner", Toggle["1e"]);
		Toggle["1f"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle.UICorner
		Toggle["20"] = Instance.new("UICorner", Toggle["1c"]);
		Toggle["20"]["CornerRadius"] = UDim.new(0, 6);

		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle.Title
		Toggle["21"] = Instance.new("TextLabel", Toggle["1c"]);
		Toggle["21"]["TextWrapped"] = true;
		Toggle["21"]["RichText"] = true;
		Toggle["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		-- Toggle["21"]["FontFace"] = ;
		Toggle["21"]["TextSize"] = 12;
		Toggle["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Toggle["21"]["AnchorPoint"] = Vector2.new(1, 0);
		Toggle["21"]["Size"] = UDim2.new(1, -36, 1, 0);
		Toggle["21"]["Text"] = Name;
		Toggle["21"]["Name"] = [[Title]];
		Toggle["21"]["Font"] = Enum.Font.Unknown;
		Toggle["21"]["BackgroundTransparency"] = 1;
		Toggle["21"]["Position"] = UDim2.new(1, -40, 0, 0);

		-- StarterToggle.Shitty's Toggle.Main.Container.ScrollingFrame.Toggle.UIStroke
		Toggle["22"] = Instance.new("UIStroke", Toggle["1c"]);
		Toggle["22"]["Color"] = Color3.fromRGB(101, 101, 101);
		Toggle["22"]["Thickness"] = 2;
		Toggle["1c"].MouseEnter:Connect(function ()
			MouseHovering = true
			Toggle["1c"].Transparency = 0.6
		end)

		Toggle["1c"].MouseLeave:Connect(function ()
			MouseHovering = false
			Toggle["1c"].Transparency = 0
		end)
		game:GetService("UserInputService").InputEnded:Connect(function (input, gameProcessed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and MouseHovering then
				if not tr then
					Toggle["1e"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
					tr = true
					callback(false)
				else
					Toggle["1e"].BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					tr = false
					callback(true)
				end
			end
		end)
		return Toggle
	end
	return GUI
end

return Library
