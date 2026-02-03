local part = script.Parent
local force = 200
part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		player.Character.Humanoid.JumpPower = force
		player.Character.Humanoid.Jump = true
		task.wait(0.5)
		player.Character.Humanoid.JumpPower = 50
	end
end)
