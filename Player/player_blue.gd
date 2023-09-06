extends AnimatableBody2D

const SPEED = 300.0

func _physics_process(delta):
	var direction = Input.get_axis("p_blue_up", "p_blue_down")
	if direction:
		position.y += direction * SPEED * delta
	
