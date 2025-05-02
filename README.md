local buttonSpeed = Instance.new("TextButton")
buttonSpeed.Text = "سرعة"
buttonSpeed.Size = UDim2.new(1, -10, 0, 35)
buttonSpeed.Position = UDim2.new(0, 5, 0, 50)
buttonSpeed.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
buttonSpeed.TextColor3 = Color3.new(1,1,1)
buttonSpeed.Parent = SidePanel

buttonSpeed.MouseButton1Click:Connect(function()
    local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then hum.WalkSpeed = 100 end
end)
