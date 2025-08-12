extends Control

@export var skins: Array[Texture2D]
@onready var preview = $HBoxContainer/TextureRect
@onready var label = $HBoxContainer/TextureRect/Label
var levels = 10

func _ready() -> void:
	if str(gb.levels[levels-1]) == str(levels):
		gb.text.append("Rainbow") 
		if gb.stars == ["⭐", "⭐", "⭐", "⭐", "⭐", "⭐", "⭐", "⭐", "⭐", "⭐", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰", "✰",]:
			gb.text.append("Ship")
	preview.texture = skins[gb.index]
	label.text = gb.text[gb.index]


func _on_back_pressed() -> void:
	gb.index -= 1
	if gb.index < 0:
		gb.index = gb.text.size()-1
	elif gb.index > gb.text.size()-1:
		gb.index = 0
	preview.texture = skins[gb.index]
	label.text = gb.text[gb.index]


func _on_next_pressed() -> void:
	gb.index += 1
	if gb.index < 0:
		gb.index = gb.text.size()-1
	elif gb.index > gb.text.size()-1:
		gb.index = 0
	preview.texture = skins[gb.index]
	label.text = gb.text[gb.index]
