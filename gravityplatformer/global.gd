extends Node

var level = 0
var gravity = 981
var planet = "earth"
var pressed = 0

func _process(delta: float) -> void:
	if gravity == 981:
		planet = "Earth"
	elif gravity == 373:
		planet = "Mars"
	else:
		planet = "Jupiter"
	if Input.is_action_just_pressed("escape"):
		get_tree().change_scene_to_file("res://Scenes/Menu's/main_menu.tscn")
