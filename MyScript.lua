-- إعدادات الواجهة
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 200, 0,50)
flyButton.position = UDim2.new(0.5, -100, 0, 80)
flyButton.Text = "تشغيل الطيران"
flyButton.TextScaled = true
flyButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
flyButton.TextColor3 = Color3.new(1, 1, 1)
flyButton.parent = frame

flyButton.MouseButton1C1ick:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YxU1jv9y"))()
  end)

local char = game.Players.LocalPlayer.Character

-- ملابس
local shirt = Instance.new("Shirt", char)
shirt.ShirtTemplate = "rbxassetid://9059168527" -- جاكيت

-- ملابس
local shirt = Instance.new("Shirt", char)
shirt.ShirtTemplate = "rbxassetid://9665807849" -- جاكيت

-- ملابس
local shirt = Instance.new("Shirt", shar)
shirt.ShirtTemplate = "rbxassetid://10270188752" -- جاكيت

local shirt = Instance.new("Shirt", shar)
shirt.ShirtTemplate = "rbxassetid://9448611704" -- جاكيت

-- رأس مختلف
char.Head.MeshId = "rbxassetid://14960720067" -- راس روبوت

-- راس مختلف
char.Head.MeshId = "rbxassetid://16580493236" -- عيون نار

-- راس مختلف
char.Head.MeshId = "rbxassetid://134082579" -- راس مخفي

-- تأثير نار على الجسم
local fire = Instance.new("Fire", char.HumanoidRootPart)
fire.Size = 10
fire.Heat = 25

-- إعداد قائمة بالأماكن في بروك هافن
local locations = {
    {name = "منزل 1", position = Vector3.new(50, 3, 50)},
    {name = "منزل 2", position = Vector3.new(100, 3, 100)},
    {name = "مستشفى", position = Vector3.new(200, 3, 150)},
    {name = "مدرسة", position = Vector3.new(300, 3, 250)},
    {name = "مركز الشرطة", position = Vector3.new(400, 3, 350)},
    {name = "المطار", position = Vector3.new(500, 3, 450)},
    {name = "المول", position = Vector3.new(600, 3, 550)},
    -- أضف المزيد من المواقع حسب الحاجة
}

-- إعداد واجهة المستخدم
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "تقارير بروك هافن"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.Parent = frame

-- إنشاء أزرار التليبور للمناطق
for i, location in pairs(locations) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 50)
    button.Position = UDim2.new(0, 0, 0.1 * i, 0)
    button.Text = "تقرير: " .. location.name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextScaled = true
    button.Parent = frame
    
    -- تفعيل التليبور عند الضغط على الزر
    button.MouseButton1Click:Connect(function()
        game.Players.LocalPlayer.Character:MoveTo(location.position)
        print("تم التليبور إلى: " .. location.name)
    end)
end

-- زر إغلاق الواجهة
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 100, 0, 50)
closeButton.Position = UDim2.new(0.5, -50, 1, -60)
closeButton.Text = "إغلاق"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.TextScaled = true
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "معلومات اللاعب"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.Parent = frame

local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0, 100, 0, 100)
image.Position = UDim2.new(0.5, -50, 0.2, 0)
image.Image = "rbxassetid://92985720315687" -- ضع هنا ID الصورة التي ترغب في عرضها
image.Parent = frame

local playerName = Instance.new("TextLabel")
playerName.Size = UDim2.new(1, 0, 0, 50)
playerName.Position = UDim2.new(0, 0, 0.4, 0)
playerName.Text = "الاسم: " .. game.Players.LocalPlayer.Name
playerName.TextColor3 = Color3.fromRGB(255, 255, 255)
playerName.TextScaled = true
playerName.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
playerName.Parent = frame

local userId = Instance.new("TextLabel")
userId.Size = UDim2.new(1, 0, 0, 50)
userId.Position = UDim2.new(0, 0, 0.6, 0)
userId.Text = "User ID: " .. game.Players.LocalPlayer.UserId
userId.TextColor3 = Color3.fromRGB(255, 255, 255)
userId.TextScaled = true
userId.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
userId.Parent = frame

local accountAge = Instance.new("TextLabel")
accountAge.Size = UDim2.new(1, 0, 0, 50)
accountAge.Position = UDim2.new(0, 0, 0.8, 0)
accountAge.Text = "تاريخ الإنشاء: " .. game.Players.LocalPlayer.AccountAge .. " يوم"
accountAge.TextColor3 = Color3.fromRGB(255, 255, 255)
accountAge.TextScaled = true
accountAge.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
accountAge.Parent = frame

local scriptName = Instance.new("TextLabel")
scriptName.Size = UDim2.new(1, 0, 0, 50)
scriptName.Position = UDim2.new(0, 0, 1, 0)
scriptName.Text = "السكربت: sandShadwoX"
scriptName.TextColor3 = Color3.fromRGB(255, 255, 255)
scriptName.TextScaled = true
scriptName.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scriptName.Parent = frame

-- زر إغلاق
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 100, 0, 50)
closeButton.Position = UDim2.new(0.5, -50, 1, -60)
closeButton.Text = "إغلاق"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.TextScaled = true
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
