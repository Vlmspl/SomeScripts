-- Flashlight.lua

local function createFlashlight()
    local RunService = game:GetService("RunService")
    local camera = game.Workspace.CurrentCamera
    
    -- Create the spotlight
    local flashlight = Instance.new("SpotLight")
    flashlight.Parent = camera -- Parent to the Camera
    flashlight.Brightness = 10
    flashlight.Range = 50
    flashlight.Angle = 50
    flashlight.Color = Color3.fromRGB(255, 255, 255)
    
    -- Set the spotlight's initial position relative to the camera
    flashlight.Position = camera.CFrame.Position
    
    -- Update flashlight position every frame
    local function moveFlashlight()
        flashlight.Position = camera.CFrame.Position
    end
    
    RunService.Heartbeat:Connect(moveFlashlight)
end

-- Call the function to create the flashlight when the script is loaded
createFlashlight()
