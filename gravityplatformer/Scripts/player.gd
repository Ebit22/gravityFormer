extends CharacterBody2D

@onready var animatedSprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 200.0
const COYOTY = 0.1
const JUMP_VELOCITY = -300.0
var PLANETS = [981, 373, 2479]
var PLANET = 0
var CoyotyTimer = COYOTY


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		PhysicsServer2D.area_set_param(get_viewport().find_world_2d().space, PhysicsServer2D.AREA_PARAM_GRAVITY, PLANETS[PLANET])
		velocity += get_gravity() * delta
		CoyotyTimer -= delta
		animatedSprite.play("Jump")
	else:
		CoyotyTimer = COYOTY

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and CoyotyTimer > 0:
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
		animatedSprite.play("Run")
		if direction > 0:
			animatedSprite.flip_h = false
		else:
			animatedSprite.flip_h = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animatedSprite.play("Idle")
	if Input.is_action_just_pressed("SwitchGravity"):
		PLANET += 1
		if PLANET > 2:
			PLANET = 0
	gb.gravity = PLANETS[PLANET]
	$Label.text = "Planet: " + str(gb.planet)

	move_and_slide()
