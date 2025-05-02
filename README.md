local buttonFly = Instance.new("TextButton")
buttonFly.Text = "طيران"
buttonFly.Size = UDim2.new(1, -10, 0, 35)
buttonFly.Position = UDim2.new(0, 5, 0, 10)
buttonFly.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
buttonFly.TextColor3 = Color3.new(1,1,1)
buttonFly.Font = Enum.Font.Gotham
buttonFly.TextSize = 14
buttonFly.Parent = SidePanel

buttonFly.MouseButton1Click:Connect(function()
    -- كود تفعيل الطيران
end)
