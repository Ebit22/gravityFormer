extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if linear_velocity.length() < 50:
		$Killzone/CollisionShape2D.disabled = true
	else:
		$Killzone/CollisionShape2D.disabled = false
