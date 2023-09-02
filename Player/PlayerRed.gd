extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):
	var direction = Input.get_axis("p_red_up", "p_red_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()
