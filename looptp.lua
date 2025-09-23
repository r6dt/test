-- เวลาเป็นวินาที
local delayTime = 300 

-- CFrame เป้าหมาย
local targetCFrame = CFrame.new(
    1375.31616, -603.46405, 2337.57251,
    0.942536652, 5.14034149e-08, -0.33410278,
    -6.6218206e-08, 1, -3.29529435e-08,
    0.33410278, 5.31830437e-08, 0.942536652
)

-- loop ตลอด
while true do
    -- เช็คว่ามีตัวละครกับ HumanoidRootPart ก่อน
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = targetCFrame
    end
    
    -- รอ
    task.wait(delayTime)
end
