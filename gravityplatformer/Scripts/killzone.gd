extends Area2D

var bodies_in_zone = []

func _ready() -> void:
	visible = true

func _on_body_entered(body: Node2D) -> void:
	bodies_in_zone.append(body)
	print(visible, body)
	if body.is_in_group("player") and visible == true:
		get_tree().change_scene_to_file("res://Scenes/Menu's/restart_screen.tscn")
	else: 
		visible = bodies_in_zone.size() == 0



func _on_body_exited(body: Node2D) -> void:
	bodies_in_zone.erase(body)
	visible = bodies_in_zone.size() == 0
