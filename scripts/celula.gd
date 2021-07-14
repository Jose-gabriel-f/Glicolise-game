extends Node2D
# var tipo_reagente --> fosfato, ATP
func _ready():
	pass
	
func _on_Area2D_area_entered(area):
	print(area.get_name(), " entrou na célula")

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if event.position.x > 424 and event.position.x < 575 and event.position.y > 123 and event.position.y < 275:
			print("click", event.position)
			get_tree().change_scene("res://scenes/glicolise.tscn")
