local plataforma = script.Parent
local activate = false

local function fade(otherPart)
	local otherParent = otherPart.Parent
	local humanoid = otherParent:FindFirstChild("Humanoid")
	if humanoid and activate == false then
		activate= true
		for count = 1,10 do
			plataforma.Transparency = count / 10
			wait(0.1)
		end
		plataforma.CanCollide =false 
		wait(5)
		activate = false 
		plataforma.Transparency = 0
		plataforma.CanCollide =true
	end
end

plataforma.touched:Connect(fade)
