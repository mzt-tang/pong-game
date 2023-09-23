extends Node

var PlayerScore = 0
var OpponentScore = 0

func _on_point_zone_left_body_entered(body):
	$Ball.position = Vector2(1152/2, 648/2)
	OpponentScore +=1


func _on_point_zone_right_body_entered(body):
	$Ball.position = Vector2(1152/2, 648/2)
	PlayerScore +=1

func _process(delta):
	$PlayerScore.text = str(PlayerScore)
	$OpponentScore.text = str(OpponentScore)
