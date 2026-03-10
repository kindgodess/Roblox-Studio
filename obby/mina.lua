-- Script para hacer explotar una parte al tocarla y eliminar al jugador
local part = script.Parent
local function explodeAndKill(player)
	-- Crea una explosión en la posición de la parte
	local explosion = Instance.new("Explosion")
	explosion.Position = part.Position
	explosion.Parent = workspace
	-- Elimina al jugador
	player:LoadCharacter()
end
part.Touched:Connect(explodeAndKill)
