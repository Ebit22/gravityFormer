extends Area2D



func _on_body_entered(body: Node2D) -> void:
	gb.level += 1
	get_tree().change_scene_to_file("res://Scenes/Levels/level_" + str(gb.level) + ".tscn")
