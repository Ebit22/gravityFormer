extends Control



func _on_restart_pressed() -> void:
	if not gb.level == 0:
		get_tree().change_scene_to_file("res://Scenes/Levels/level_" + str(gb.level) + ".tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/endless.tscn")



func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu's/main_menu.tscn")
