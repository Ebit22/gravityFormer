extends TileMapLayer

func _process(delta: float) -> void:
	if gb.pressed == 1:
		queue_free()
