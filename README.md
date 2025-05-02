local noclip = false
local buttonNoclip = Instance.new("TextButton")
buttonNoclip.Text = "نقل خلال الجدران"
buttonNoclip.Size = UDim2.new(1, -10, 0, 35)
buttonNoclip.Position = UDim2.new(0, 5, 0, 90)
buttonNoclip.BackgroundColor3 = Color3.fromRGB(200, 100, 0)
buttonNoclip.TextColor3 = Color3.new(1,1,1)
buttonNoclip.Parent = SidePanel

buttonNoclip.MouseButton1Click:Connect(function()
    noclip = not noclip
end)

game:GetService("RunService").Stepped:Connect(function()
    if noclip then
        for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)
