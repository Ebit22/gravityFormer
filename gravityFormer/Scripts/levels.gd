extends Control


func _ready() -> void:
	for i in range(gb.levels.size()):
		$Levels.get_child(i).text = str(gb.levels[i])
		if str(gb.levels[i]) == "🔒":
			$Levels.get_child(i).disabled = true
		else:
			$Levels.get_child(i).disabled = false

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


func _on_level_7_pressed() -> void:
	gb.level = 7
	get_tree().change_scene_to_file("res://Scenes/Levels/level_7.tscn")


func _on_level_8_pressed() -> void:
	gb.level = 8
	get_tree().change_scene_to_file("res://Scenes/Levels/level_8.tscn")


func _on_level_9_pressed() -> void:
	gb.level = 9
	get_tree().change_scene_to_file("res://Scenes/Levels/level_9.tscn")


func _on_level_10_pressed() -> void:
	gb.level = 10
	get_tree().change_scene_to_file("res://Scenes/Levels/level_10.tscn")
