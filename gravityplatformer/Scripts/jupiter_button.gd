extends StaticBody2D

func _ready() -> void:
	gb.pressed = 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	if gb.gravity == 2479 and gb.pressed != 1:
		$AnimatedSprite2D.play("Pressed")
		$CollisionShape2D.queue_free()
		gb.pressed = 1
