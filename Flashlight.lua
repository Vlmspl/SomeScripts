-- FlashlightScript

local function createFlashlight()
    local RunService = game:GetService("RunService")
    local camera = game.Workspace.CurrentCamera

    -- Create the part under the camera
    local part = Instance.new("Part")
    part.Parent = game.Workspace
    part.Size = Vector3.new(1, 1, 1)  -- Adjust size as needed
    part.Position = camera.CFrame.Position - Vector3.new(0, 2, 0)  -- Position the part below the camera
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Make it invisible

    -- Create the spotlight under the part
    local spotlight = Instance.new("SpotLight")
    spotlight.Parent = part
    spotlight.Brightness = 5
    spotlight.Range = 70
    spotlight.Angle = 50
    spotlight.Color = Color3.fromRGB(255, 255, 255)
    spotlight.ConeHeight = 30
    spotlight.ConeRadius = 10

    -- Update the part and spotlight position every frame to follow the camera
    local function moveFlashlight()
        part.CFrame = camera.CFrame - Vector3.new(0, 2, 0)  -- Keep part below camera
    end
    
    RunService.Heartbeat:Connect(moveFlashlight)
end

-- Call the function to create the flashlight when the script is loaded
createFlashlight()
