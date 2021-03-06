extends Node2D

var selecionado = false
var dentro_celula = false
onready var timer = $Timer

func _ready():
	pass

func _process(delta):
	rotate(0.003)
	if selecionado:
		followMouse()

func followMouse():
	position = get_global_mouse_position()

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed == true and dentro_celula == false:
			selecionado = true
		elif event.pressed == false and dentro_celula == true:
			get_node("AnimationPlayer").play("animacaoglicose")
			selecionado = false
			$"../Control/CheckBox5".pressed = true
			$"../Control/AudioStreamPlayer".play()
			timer.start()
			$Area_glicose.queue_free()
		else:
			selecionado = false
			
func _on_Area2D_area_entered(area):
	if area.name == "Area_celula":
		dentro_celula = true


func _on_Timer_timeout():
	$"../Control/AudioStreamPlayer".stop()
	print("foi")
	$Timer.queue_free()
