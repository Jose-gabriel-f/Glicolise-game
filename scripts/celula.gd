extends Node2D

# var tipo_reagente --> fosfato, ATP
# var dentro_celula --> true: dentro, false: fora

func _ready():
	pass

func _on_Area2D_area_entered(area):
	get_node("Animationcelula").play("celulanim")

# 
