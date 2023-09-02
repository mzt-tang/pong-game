extends CharacterBody2D


const SPEED = 300.0

func _ready():
	randomize()
	velocity.x = [-1, 1][randi() % 2] * SPEED
	velocity.y = [-0.8, 0.8][randi() % 2] * SPEED
	

func _physics_process(delta):
	var collision_object = move_and_collide(velocity*delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.get_normal())
