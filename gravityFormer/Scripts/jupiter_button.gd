extends StaticBody2D

var pressed = 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	if gb.gravity == 2479 and pressed != 1:
		$AnimatedSprite2D.play("Pressed")
		$CollisionShape2D.queue_free()
		get_child(4).queue_free()
		pressed = 1
