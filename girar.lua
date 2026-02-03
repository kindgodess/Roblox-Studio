local RunService = game:GetService("RunService")


local propeller = script.Parent
local ROTATE_SPEED = 20


RunService.Heartbeat:Connect(function(step)


	local rotationAmount = math.rad(ROTATE_SPEED * step)


	propeller.CFrame = propeller.CFrame * CFrame.Angles(0, rotationAmount, 0)
end)
