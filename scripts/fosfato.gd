extends Node2D

var selecionado = false

func _ready():
	pass # Replace with function body.

func _process(delta):
	if selecionado:
		followMouse()

func followMouse():
	position = get_global_mouse_position()

func _on_Area_fosfato_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			selecionado = true
		else:
			selecionado = false
