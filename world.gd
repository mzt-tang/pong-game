extends Node

enum {START, RUNNING, PAUSED, GAMEOVER}

var player_score = 0
var opponent_score = 0
var game_state = START

func _on_point_zone_left_body_entered(body):
	$Ball.position = Vector2(1152/2, 648/2)
	opponent_score +=1


func _on_point_zone_right_body_entered(body):
	$Ball.position = Vector2(1152/2, 648/2)
	player_score +=1

func _process(delta):
	print(game_state)
	if game_state == START:
		# game is paused
		if Input.is_action_just_pressed('action_button'):
			var ball = preload("res://Ball/ball.tscn")
			print('ran')
			game_state = RUNNING
			self.add_child(ball.instantiate())
		pass
	elif game_state == RUNNING:
		# game is running
		
		if Input.is_action_just_pressed('action_button'):
			game_state = PAUSED
		pass
	elif game_state == PAUSED:
		# game is paused
		
		if Input.is_action_just_pressed('action_button'):
			game_state = RUNNING
		pass
	elif game_state == GAMEOVER:
		# game over screen
		# suspend/reset the game
		# state who won
		# 'press space to play again'
		if Input.is_action_just_pressed('action_button'):
			game_state = RUNNING
		pass
	$PlayerScore.text = str(player_score)
	$OpponentScore.text = str(opponent_score)
