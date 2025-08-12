extends Node

var level = 0
var gravity = 981
var planet = "earth"
var index = 0
var levels = ["1", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", "🔒", ]
var stars = ["✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", ]
var HighScore = 0
var text = ["normal"]

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
		HighScore = 0
		index = 0
		stars = ["✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", ]
		get_tree().change_scene_to_file("res://Scenes/Menu's/main_menu.tscn")
		save_game()

func save_game():
	var save_data = {
		"levels": levels,
		"highscore": HighScore,
		"stars": stars,
		"index": index,
		"skins": text,
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
		levels = save_data.get("levels", 0)
		HighScore = save_data.get("highscore", 0)
		stars = save_data.get("stars", 0)
		index = save_data.get("index", 0)
		text = save_data.get("skins", 0)
