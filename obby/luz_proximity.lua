on = false

script.Parent.Triggered:Connect(function()

	wait(0.1)
	if on == false then

		script.Parent.Parent.PointLight.Brightness = 2
		script.Parent.ActionText = "Apagar"
		on = true
	else
		script.Parent.Parent.PointLight.Brightness = 0
		script.Parent.ActionText = "Encender"
		on = false

	end

end)
