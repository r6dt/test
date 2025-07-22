wait(600)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- รอให้เกมโหลดก่อน
repeat wait() until #Players:GetPlayers() > 0

-- ตรวจสอบจำนวนผู้เล่น
if #Players:GetPlayers() > 1 then
    -- เตะตัวเองออกจากเซิร์ฟ พร้อมข้อความแจ้งเตือน
    player:Kick("เซิร์ฟนี้มีคนอื่นอยู่แล้ว")
end

-- เผื่อมีคนใหม่เข้ามาทีหลัง (กรณีคุณอยู่ก่อน แล้วมีคนใหม่มา)
Players.PlayerAdded:Connect(function()
    if #Players:GetPlayers() > 1 then
        player:Kick("มีผู้เล่นคนอื่นเข้ามาในเซิร์ฟเวอร์")
    end
end)
