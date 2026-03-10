--script de colores rojo, verde y azul:
	local bloque = script.Parent
while true do
	wait(0.5)--Tiempo
	bloque.Color = Color3.new(1, 0, 0)--Color rojo
	wait(0.5)
	bloque.Color = Color3.new(0, 1, 0)--Color verde
	wait(0.5)
	bloque.Color = Color3.new(0, 0, 1)--Color azul
end
