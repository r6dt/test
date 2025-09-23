local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

-- ตำแหน่งต้นทางที่ต้องเช็ค (ไม่สน rotation)
local sourcePos = Vector3.new(382.289124, 134.200012, 230.39119)
local tolerance = 100  -- ปรับให้กว้างพอ

-- ฟังก์ชันเช็คใกล้ตำแหน่ง
local function isNear(pos1, pos2, tol)
    return (pos1 - pos2).Magnitude <= tol
end

-- Loop เช็คทุก 300 วิ
while task.wait(600) do
    char = player.Character
    hrp = char and char:FindFirstChild("HumanoidRootPart")
    
    if hrp then
        local currentPos = hrp.Position
        
        if isNear(currentPos, sourcePos, tolerance) then
            print(":no_entry_sign: อยู่ใกล้ต้นทาง -> เตะผู้เล่นออก")
            player:Kick("อยู่ในพื้นที่ต้องห้าม")
            break  -- หยุด loop หลังจากเตะแล้ว
        else
            print(":white_check_mark: ไม่ได้อยู่ใกล้พื้นที่ต้องห้าม")
        end
    end
end
