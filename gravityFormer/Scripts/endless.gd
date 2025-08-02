extends Node2D

var speed = 45.0
var part
var moving = false
var score = 0

func _ready() -> void:
	randomize()

func _process(delta: float) -> void:
		if not moving:
			score += 1
			$Player/Label2.text = "Score: " + str(score)
			if score > gb.HighScore:
				gb.HighScore = score
				gb.save_game()
			part = get_node(str(randi() % 5))
			part.enabled = true
			part.visible = true
			part.position.x = 110
			moving = true
		elif moving:
			part.position.x -= speed * delta
			if  part.position.x < -80:
				moving = false
