script.Parent.Touched:Connect(function(hit)
	local Humanoid = hit.Parent:FindFirstChild("Humanoid")
	if Humanoid then
		Humanoid.WalkSpeed = 80 --- Aqui ponen la velocidad que deseen 

	end
end)
