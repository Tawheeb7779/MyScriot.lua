-- السكربت: توهيب Hub

-- إعداد الواجهة
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ToheebHubUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- الإطار الرئيسي
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 500)
frame.Position = UDim2.new(0.5, -150, 0.5, -250)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

-- عنوان الواجهة
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "واجهة توهيب بروك هافن"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.Parent = frame

-- زر الطيران
local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(1, 0, 0, 50)
flyButton.Position = UDim2.new(0, 0, 0, 60)
flyButton.Text = "تشغيل الطيران"
flyButton.TextScaled = true
flyButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
flyButton.TextColor3 = Color3.new(1, 1, 1)
flyButton.Parent = frame

flyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YxU1jv9y"))()
end)

-- إعداد الشخصية
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- ملابس (مثال جاكيت واحد فقط)
local shirt = Instance.new("Shirt", char)
shirt.ShirtTemplate = "rbxassetid://9059168527"

-- تغيير رأس الشخصية (إذا فيه Mesh)
local mesh = char.Head:FindFirstChild("Mesh")
if mesh then
    mesh.MeshId = "rbxassetid://134082579"
end

-- إضافة نار
local fire = Instance.new("Fire")
fire.Size = 10
fire.Heat = 25
fire.Parent = char:WaitForChild("HumanoidRootPart")

-- إعداد أماكن التليبور
local locations = {
    {name = "منزل 1", position = Vector3.new(50, 3, 50)},
    {name = "منزل 2", position = Vector3.new(100, 3, 100)},
    {name = "مستشفى", position = Vector3.new(200, 3, 150)},
    {name = "مدرسة", position = Vector3.new(300, 3, 250)},
    {name = "مركز الشرطة", position = Vector3.new(400, 3, 350)},
    {name = "المطار", position = Vector3.new(500, 3, 450)},
    {name = "المول", position = Vector3.new(600, 3, 550)},
}

-- أزرار التليبور
for i, location in ipairs(locations) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 40)
    button.Position = UDim2.new(0, 0, 0, 120 + (i - 1) * 45)
    button.Text = "اذهب إلى: " .. location.name
    button.TextScaled = true
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        player.Character:MoveTo(location.position)
    end)
end

-- معلومات اللاعب
local infoFrame = Instance.new("Frame")
infoFrame.Size = UDim2.new(1, 0, 0, 150)
infoFrame.Position = UDim2.new(0, 0, 1, -150)
infoFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
infoFrame.Parent = frame

local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 0, 30)
nameLabel.Position = UDim2.new(0, 0, 0, 0)
nameLabel.Text = "الاسم: " .. player.Name
nameLabel.TextScaled = true
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.BackgroundTransparency = 1
nameLabel.Parent = infoFrame

local idLabel = Instance.new("TextLabel")
idLabel.Size = UDim2.new(1, 0, 0, 30)
idLabel.Position = UDim2.new(0, 0, 0, 30)
idLabel.Text = "User ID: " .. player.UserId
idLabel.TextScaled = true
idLabel.TextColor3 = Color3.new(1, 1, 1)
idLabel.BackgroundTransparency = 1
idLabel.Parent = infoFrame

local ageLabel = Instance.new("TextLabel")
ageLabel.Size = UDim2.new(1, 0, 0, 30)
ageLabel.Position = UDim2.new(0, 0, 0, 60)
ageLabel.Text = "العمر بالأيام: " .. player.AccountAge
ageLabel.TextScaled = true
ageLabel.TextColor3 = Color3.new(1, 1, 1)
ageLabel.BackgroundTransparency = 1
ageLabel.Parent = infoFrame

-- زر الإغلاق
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 100, 0, 40)
closeButton.Position = UDim2.new(0.5, -50, 1, -45)
closeButton.Text = "إغلاق"
closeButton.TextScaled = true
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
