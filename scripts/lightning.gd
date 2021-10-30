extends Node2D

func lightning():
	$AnimationPlayer.play("lightning")


func _on_Timer_timeout():
	lightning()
