extends CharacterBody2D


const SPEED = 300.0
const AI = true
var ball

func _ready():
	ball = get_parent().find_child("Ball")

func _physics_process(delta):
	if AI:
		if abs(ball.position.y - position.y) > 25 and ball.velocity.x > 0:
			velocity.y = _get_direction() * SPEED
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
	else:	
		var direction = Input.get_axis("p_red_up", "p_red_down")
		if direction:
			velocity.y = direction * SPEED
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

func _get_direction():
	var direction = ball.position.y - position.y
	if direction > 0:
		return 1
	return -1
