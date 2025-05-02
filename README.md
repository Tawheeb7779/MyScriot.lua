local jumpButton = Instance.new("TextButton")
jumpButton.Text = "نط عالي"
jumpButton.Size = UDim2.new(1, -10, 0, 35)
jumpButton.Position = UDim2.new(0, 5, 0, 100)
jumpButton.BackgroundColor3 = Color3.fromRGB(200, 100, 0)
jumpButton.TextColor3 = Color3.new(1,1,1)
jumpButton.Font = Enum.Font.Gotham
jumpButton.TextSize = 14
jumpButton.Parent = SidePanel

jumpButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end)
