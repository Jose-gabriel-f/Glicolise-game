extends Node2D
# var tipo_reagente --> fosfato, ATP
func _ready():
	pass
	
func _on_Area2D_area_entered(area):
	print(area.get_name(), " entrou na célula")

func _on_Area_celula_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		print("click", event.position)
		if $"../CameraGeral".current:
			$CameraDetalhe.current = true
		else:
			$"../CameraGeral".current = true
