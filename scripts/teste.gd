extends RigidBody2D

var selecionado = false

func _ready():
	pass
	
func _process(delta):
	if selecionado:
		followMouse()

func followMouse():
	position = get_global_mouse_position()

func _on_glicose_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed == true:
			selecionado = true
		else:
			selecionado = false
