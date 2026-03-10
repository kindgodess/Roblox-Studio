local part = script.Parent
local scaleFactor = 0.9 -- Ajusta este valor para cambiar el factor de escala
part.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.Parent:ScaleTo(humanoid.Parent:GetScale() * scaleFactor)
	end
end)
