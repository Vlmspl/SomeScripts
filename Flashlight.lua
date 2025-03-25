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

    -- Create the point light under the part
    local pointLight = Instance.new("PointLight")
    pointLight.Parent = part
    pointLight.Brightness = 5
    pointLight.Range = 15
    pointLight.Color = Color3.fromRGB(255, 255, 255)

    -- Update the part and point light position every frame to follow the camera
    local function moveFlashlight()
        part.Position = camera.CFrame.Position - Vector3.new(0, 2, 0)  -- Keep part below camera
        pointLight.Position = part.Position  -- Keep the point light at the same position as the part
    end
    
    RunService.Heartbeat:Connect(moveFlashlight)
end

-- Call the function to create the flashlight when the script is loaded
createFlashlight()
