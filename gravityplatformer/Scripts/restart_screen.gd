extends Control



func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_" + str(gb.level) + ".tscn")



func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu's/main_menu.tscn")
