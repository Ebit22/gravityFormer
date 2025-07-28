extends CharacterBody2D



const JUMP_VELOCITY = -300.0
var gravity = 1000


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY, sqrt(pow(gravity, 2)))
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_pressed("AddGravity"):
		gravity += 10
	elif Input.is_action_pressed("DeleteGravity"):
		gravity -= 10
	$Label.text = "Gravity:" + str(gravity)
	if gravity < 0:
		PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY_VECTOR, Vector2.UP)
		$AnimatedSprite2D.flip_v = true
	else:
		PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY_VECTOR, Vector2.DOWN)
		$AnimatedSprite2D.flip_v = false

	move_and_slide()
