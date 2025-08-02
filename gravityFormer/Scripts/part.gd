extends TileMapLayer

var speed = 45.0
var firstTime = true
var dup

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x < -80:
		position.x -= speed*delta
		if position.x < -685:
			enabled = false
			visible = false
