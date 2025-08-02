extends Node

var level = 0
var gravity = 981
var planet = "earth"
var pressed = 0
var levels = ["1", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", ]
var HighScore = 0

func _ready() -> void:
	load_game()

func _process(delta: float) -> void:
	if gravity == 981:
		planet = "Earth"
	elif gravity == 373:
		planet = "Mars"
	else:
		planet = "Jupiter"
	if Input.is_action_just_pressed("escape"):
		get_tree().change_scene_to_file("res://Scenes/Menu's/main_menu.tscn")
	if Input.is_action_just_pressed("reset"):
		get_tree().change_scene_to_file("res://Scenes/Levels/level_"+str(level)+".tscn")
	if Input.is_action_just_pressed("resetgame"):
		levels = ["1", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", ]
		get_tree().change_scene_to_file("res://Scenes/Menu's/main_menu.tscn")
		save_game()

func save_game():
	var save_data = {
		"levels": levels,
		"highscore": HighScore,
	}
	var file_path = "user://savegame.json"
	var file = FileAccess.open(file_path, FileAccess.WRITE)
	file.store_string(JSON.stringify(save_data))
	file.close()

func load_game():
	var file_path = "user://savegame.json"

	if FileAccess.file_exists(file_path):
		var file = FileAccess.open(file_path, FileAccess.READ)
		var content = file.get_as_text()
		var save_data = JSON.parse_string(content)
		file.close()

		if typeof(save_data) == TYPE_DICTIONARY:
			levels = save_data.get("levels", 0)
			HighScore = save_data.get("highscore", 0)
