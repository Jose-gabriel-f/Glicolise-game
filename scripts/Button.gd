extends Button

func _ready():
	pass

func _on_Button_pressed():
	if $"../CameraGeral".current:
		$"../celula/CameraDetalhe".current = true
	else :
		$"../CameraGeral".current = true
