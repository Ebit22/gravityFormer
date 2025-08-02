extends Area2D


func _on_body_entered(body: Node2D) -> void:
	gb.level += 1
	gb.levels[gb.level-1] = gb.level
	get_tree().change_scene_to_file("res://Scenes/Levels/level_" + str(gb.level) + ".tscn")
	print("res://Scenes/Levels/level_" + str(gb.level) + ".tscn")
	gb.save_game()
