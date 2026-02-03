local platform = script.Parent

local function disappear()
	platform.CanCollide = false
	local platform = script.Parent

end

local function appear()
	platform.CanCollide = true
	platform.Transparency = 0
end

while true do
	task.wait(3)
	disappear()
	task.wait(3)
	appear()
end
