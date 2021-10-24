extends Button

func _ready():
	pass

#func _process(delta):
#	pass

func _on_Button_pressed():
	if $Main/CameraGeral.current:
		$CameraDetalhe.current = true
	else :
		$CameraGeral.current = true
