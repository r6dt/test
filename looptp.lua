local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

-- ตำแหน่งต้นทางที่ต้องเช็ค (ไม่สน rotation)
local sourcePos = Vector3.new(382.289124, 134.200012, 230.39119)

-- ตำแหน่งปลายทาง
local targetCFrame = CFrame.new(
    1375.31616, -603.46405, 2337.57251,
    0.942536652, 5.14034149e-08, -0.33410278,
    -6.6218206e-08, 1, -3.29529435e-08,
    0.33410278, 5.31830437e-08, 0.942536652
)

local tolerance = 100  -- ปรับให้กว้างพอ

-- ฟังก์ชันเช็คใกล้ตำแหน่ง
local function isNear(pos1, pos2, tol)
    return (pos1 - pos2).Magnitude <= tol
end

-- Loop เช็คทุก 300 วิ
while task.wait(300) do
    char = player.Character
    hrp = char and char:FindFirstChild("HumanoidRootPart")
    
    if hrp then
        local currentPos = hrp.Position
        
        if isNear(currentPos, sourcePos, tolerance) then
            print(":hourglass_flowing_sand: อยู่ใกล้ต้นทาง -> วาร์ปไปปลายทาง")
            hrp.CFrame = targetCFrame
        elseif isNear(currentPos, targetCFrame.Position, tolerance) then
            print(":white_check_mark: อยู่ที่ปลายทางแล้ว")
        else
            print(":warning: ไม่ได้อยู่ใกล้ต้นทาง -> ไม่ทำงาน")
        end
    end
end
