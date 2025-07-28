extends Control




func _on_level_1_pressed() -> void:
	gb.level = 1
	get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn")
	



func _on_level_2_pressed() -> void:
	gb.level = 2
	get_tree().change_scene_to_file("res://Scenes/Levels/level_2.tscn")



func _on_level_3_pressed() -> void:
	gb.level = 3
	get_tree().change_scene_to_file("res://Scenes/Levels/level_3.tscn")




func _on_level_4_pressed() -> void:
	gb.level = 4
	get_tree().change_scene_to_file("res://Scenes/Levels/level_4.tscn")


func _on_level_5_pressed() -> void:
	gb.level = 5
	get_tree().change_scene_to_file("res://Scenes/Levels/level_5.tscn")


func _on_level_6_pressed() -> void:
	gb.level = 6
	get_tree().change_scene_to_file("res://Scenes/Levels/level_6.tscn")
