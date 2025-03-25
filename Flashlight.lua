local RunService = game:GetService("RunService")
local flashlight = Instance.new("SpotLight")
flashlight.Parent = game.Workspace.CurrentCamera -- Parent to the Camera
flashlight.Brightness = 10
flashlight.Range = 50
flashlight.Angle = 50
flashlight.Color = Color3.fromRGB(255, 255, 255)

-- Set the spotlight's initial position relative to the camera
flashlight.Position = game.Workspace.CurrentCamera.CFrame.Position

local function moveFlashlight()
    -- Update the flashlight's position to the camera's position every frame
    flashlight.Position = game.Workspace.CurrentCamera.CFrame.Position
end

RunService.Heartbeat:Connect(moveFlashlight) -- Update flashlight position every frame
