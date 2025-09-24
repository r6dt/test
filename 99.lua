local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Remote = game:GetService("ReplicatedStorage").RemoteEvents.RequestTakeDiamonds
local Interface = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Interface")
local DiamondCount = Interface:WaitForChild("DiamondCount"):WaitForChild("Count")

--========= ระบบจำ JobId =========--
local jobFile = LocalPlayer.Name .. "_JobId.txt"

local function saveJobId(jobId)
    if writefile then
        writefile(jobFile, jobId)
        warn("Saved JobId:", jobId)
    end
end

local function loadJobId()
    if isfile and isfile(jobFile) then
        return readfile(jobFile)
    end
    return nil
end

-- เก็บ JobId ปัจจุบันทันทีที่สคริปต์เริ่มทำงาน
saveJobId(game.JobId)

--========= Rainbow UI =========--
local function rainbowStroke(stroke)
    task.spawn(function()
        while task.wait() do
            for hue = 0, 1, 0.01 do
                stroke.Color = Color3.fromHSV(hue, 1, 1)
                task.wait(0.02)
            end
        end
    end)
end

--========= Hop Server =========--
local function hopServer()
    local gameId = game.PlaceId
    local lastJobId = loadJobId() -- อ่าน jobid ล่าสุด

    while true do
        local success, body = pcall(function()
            return game:HttpGet(("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100"):format(gameId))
        end)
        if success then
            local data = HttpService:JSONDecode(body)
            for _, server in ipairs(data.data) do
                -- ข้ามเซิร์ฟปัจจุบันและเซิร์ฟเดิม
                if server.playing < server.maxPlayers 
                and server.id ~= game.JobId 
                and server.id ~= lastJobId then
                    
                    saveJobId(server.id) -- เก็บ jobid ใหม่ที่จะไป
                    TeleportService:TeleportToPlaceInstance(gameId, server.id, LocalPlayer)
                    return
                end
            end
        end
        task.wait(0.5)
    end
end

--========= ระบบตรวจเช็คชื่อเพื่อ Hop =========--
task.spawn(function()
    while task.wait(1) do
        for _, char in pairs(workspace.Characters:GetChildren()) do
            if char:FindFirstChild("Humanoid") and char:FindFirstChild("HumanoidRootPart") then
                if char:FindFirstChild("Humanoid").DisplayName == LocalPlayer.DisplayName then
                    hopServer()
                end
            end
        end
    end
end)

--========= UI =========--
local a = Instance.new("ScreenGui", game.CoreGui)
a.Name = "gg"

local b = Instance.new("Frame", a)
b.Size = UDim2.new(0, 200, 0, 90)
b.Position = UDim2.new(0, 80, 0, 100)
b.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
b.BorderSizePixel = 0
b.Active = true
b.Draggable = true

local c = Instance.new("UICorner", b)
c.CornerRadius = UDim.new(0, 8)

local d = Instance.new("UIStroke", b)
d.Thickness = 1.5
rainbowStroke(d)

local e = Instance.new("TextLabel", b)
e.Size = UDim2.new(1, 0, 0, 30)
e.BackgroundTransparency = 1
e.Text = "Farm Diamond | Cáo Mod"
e.TextColor3 = Color3.fromRGB(255, 255, 255)
e.Font = Enum.Font.GothamBold
e.TextSize = 14
e.TextStrokeTransparency = 0.6

local f = Instance.new("TextLabel", b)
f.Size = UDim2.new(1, -20, 0, 35)
f.Position = UDim2.new(0, 10, 0, 40)
f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
f.TextColor3 = Color3.new(1, 1, 1)
f.Font = Enum.Font.GothamBold
f.TextSize = 14
f.BorderSizePixel = 0

local g = Instance.new("UICorner", f)
g.CornerRadius = UDim.new(0, 6)

task.spawn(function()
    while task.wait(0.2) do
        f.Text = "Diamonds: " .. DiamondCount.Text
    end
end)

--========= หา Chest =========--
repeat task.wait() until LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

local chest = workspace.Items:FindFirstChild("Stronghold Diamond Chest")
if not chest then
    CoreGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = "chest not found (my fault)",
        Duration = 3
    })
    hopServer()
    return
end

LocalPlayer.Character:PivotTo(CFrame.new(chest:GetPivot().Position))

local proxPrompt
repeat
    task.wait(0.1)
    local prox = chest:FindFirstChild("Main")
    if prox and prox:FindFirstChild("ProximityAttachment") then
        proxPrompt = prox.ProximityAttachment:FindFirstChild("ProximityInteraction")
    end
until proxPrompt

local startTime = tick()
while proxPrompt and proxPrompt.Parent and (tick() - startTime) < 10 do
    pcall(function()
        fireproximityprompt(proxPrompt)
    end)
    task.wait(0.2)
end

if proxPrompt and proxPrompt.Parent then
    CoreGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = "stronghold is starting (auto coming soon)",
        Duration = 3
    })
    hopServer()
    return
end

repeat task.wait(0.1) until workspace:FindFirstChild("Diamond", true)

for _, v in pairs(workspace:GetDescendants()) do
    if v.ClassName == "Model" and v.Name == "Diamond" then
        Remote:FireServer(v)
    end
end

CoreGui:SetCore("SendNotification", {
    Title = "Notification",
    Text = "take all the diamonds",
    Duration = 3
})
task.wait(1)
hopServer()
