extends Node

var player_score = 0
var opponent_score = 0

func _on_point_zone_left_body_entered(body):
	$Ball.position = Vector2(1152/2, 648/2)
	$Ball.start_ball()
	opponent_score +=1
	print('trigger left')


func _on_point_zone_right_body_entered(body):
	$Ball.position = Vector2(1152/2, 648/2)
	$Ball.start_ball()
	player_score +=1
	print('trigger right')

func _process(delta):
	if GameState.game_state == "START":
		GameState.game_state = "RUNNING"
		$Ball.start_ball()
#	elif game_state == GAMEOVER:
#		# game over screen
#		# suspend/reset the game
#		# state who won
#		# 'press space to play again'
#		if Input.is_action_just_pressed('action_button'):
#			game_state = RUNNING
#		pass
	$PlayerScore.text = str(player_score)
	$OpponentScore.text = str(opponent_score)
