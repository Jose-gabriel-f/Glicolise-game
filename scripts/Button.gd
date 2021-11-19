extends Button

func _ready():
	pass

func _on_Button_pressed():
	if $"../CameraGeral".current:
		$"../celula/CameraDetalhe".current = true
		$AnimationPlayer.play("ida")
		$"../Control/CheckBox3".pressed = true
	else :
		$"../CameraGeral".current = true
		$AnimationPlayer.play("volta")
