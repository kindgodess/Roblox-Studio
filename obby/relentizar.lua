local part = script.Parent
local slowSpeed = 2 -- Ajusta este valor para cambiar la velocidad lenta
local normalSpeed = 16 -- Velocidad por defecto en Roblox
part.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.WalkSpeed = slowSpeed
		task.wait(5) -- Espera 5 segundos antes de restaurar la velocidad
		humanoid.WalkSpeed = normalSpeed
	end
end)
