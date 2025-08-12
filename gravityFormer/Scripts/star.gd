extends Node2D

func _ready() -> void:
	if gb.stars[gb.level-1] == "⭐":
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	gb.stars[gb.level-1] = "⭐"
	print(gb.level, gb.stars[gb.level])
	queue_free()
