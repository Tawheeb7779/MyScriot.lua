local flying = false
local buttonFly = Instance.new("TextButton")
buttonFly.Text = "طيران"
buttonFly.Size = UDim2.new(1, -10, 0, 35)
buttonFly.Position = UDim2.new(0, 5, 0, 10)
buttonFly.BackgroundColor3 = Color3.fromRGB(0, 170, 100)
buttonFly.TextColor3 = Color3.new(1,1,1)
buttonFly.Parent = SidePanel

buttonFly.MouseButton1Click:Connect(function()
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")
    flying = not flying
    if flying then
        local bv = Instance.new("BodyVelocity", root)
        bv.Name = "FlyVelocity"
        bv.Velocity = Vector3.new(0, 50, 0)
        bv.MaxForce = Vector3.new(0, math.huge, 0)
    else
        if root:FindFirstChild("FlyVelocity") then
            root.FlyVelocity:Destroy()
        end
    end
end)
