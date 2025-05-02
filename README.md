local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BrookhavenGUI"
ScreenGui.Parent = game.CoreGui

-- متغير لإظهار/إخفاء
local isVisible = true

-- زر إظهار/إخفاء
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 100, 0, 30)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 120, 120)
ToggleButton.Text = "إظهار/إخفاء"
ToggleButton.TextColor3 = Color3.new(1,1,1)
ToggleButton.Parent = ScreenGui

-- حساب المنتصف
local function GetCenterPosition(w,h)
	local view = workspace.CurrentCamera.ViewportSize
	return UDim2.new(0, (view.X - w)/2, 0, (view.Y - h)/2)
end

-- الإطار الرئيسي
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 350, 0, 350)
MainFrame.Position = GetCenterPosition(350, 350)
MainFrame.AnchorPoint = Vector2.new(0, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 30, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- تأثير الحواف (Glow)
local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 8)

local UIStroke = Instance.new("UIStroke", MainFrame)
UIStroke.Color = Color3.fromRGB(0, 170, 255)
UIStroke.Thickness = 2

-- قسم جانبي على اليسار
local SidePanel = Instance.new("Frame")
SidePanel.Size = UDim2.new(0, 100, 1, 0)
SidePanel.Position = UDim2.new(0, 0, 0, 0)
SidePanel.BackgroundColor3 = Color3.fromRGB(0, 100, 150)
SidePanel.Parent = MainFrame

-- محتوى القسم الأيمن
local RightPanel = Instance.new("Frame")
RightPanel.Size = UDim2.new(1, -100, 1, 0)
RightPanel.Position = UDim2.new(0, 100, 0, 0)
RightPanel.BackgroundColor3 = Color3.fromRGB(30, 35, 45)
RightPanel.Parent = MainFrame

-- خاصية السحب
local dragging, dragInput, dragStart, startPos
local UserInputService = game:GetService("UserInputService")

local function update(input)
	local delta = input.Position - dragStart
	MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

MainFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

-- تحديث المركز عند تغيير حجم الشاشة
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
	MainFrame.Position = GetCenterPosition(350, 350)
end)

-- زر الإخفاء والإظهار
ToggleButton.MouseButton1Click:Connect(function()
	isVisible = not isVisible
	MainFrame.Visible = isVisible
end)
