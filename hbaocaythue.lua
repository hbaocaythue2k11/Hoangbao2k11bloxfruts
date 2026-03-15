pcall(function()
    if game.CoreGui:FindFirstChild("WindUI") then
        game.CoreGui.WindUI:Destroy()
    end
end)

local WindUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/teoscrvn/T-ng-h-p-/main/Script%20test%20(1).txt"
))()

if not WindUI then
    warn("❌ Không load được WindUI")
    return
end

print("🍎 WindUI loaded OK")

-- 🔹 Tạo Window
local Window = WindUI:CreateWindow({
    Title = "HGB vn Hub by:hbaocaythue",
    Size = UDim2.fromOffset(480, 300),
    Theme = "Dark",
    Transparent = true
})

-- 🔹 Nút mở HUB
Window:EditOpenButton({
    Title = "HGB vn Hub",
    Icon = "99466171753982",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    ),
    Draggable = true,
})

-- =========================
--Script Fram
-- =========================
local Tabs = {}
Tabs.Home1 = Window:Tab({ Title = "Script Fram" })
Tabs.Home2 = Window:Tab({ Title = "PvP" })
Tabs.Home3 = Window:Tab({ Title = "Kaitun" })
Tabs.Home4 = Window:Tab({ Title = "khác" })

-- Button 1:
Tabs.Home1:Button({
    Title = "QuantumOnyx",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
        print("đã chạy quan tum")
    end
})

-- Button 2: 
Tabs.Home1:Button({
    Title = "Xete v4",
    Callback = function()
        if hitboxLoaded then
            warn("⚠️ Hitbox đã bật rồi")
            return
        end
        hitboxLoaded = true
        getgenv().Version = "V4"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
        print("xete v4 đã chạy")
    end
})

-- 🍎 Thông báo
WindUI:Notify({
    Title = "HGB vn HUB",
    Content = "Load thành công!",
    Duration = 4
        end
})
       