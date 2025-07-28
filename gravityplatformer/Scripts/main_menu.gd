extends Control




func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu's/options_menu.tscn")


func _on_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu's/levels.tscn")


func _on_endless_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/endless.tscn")
