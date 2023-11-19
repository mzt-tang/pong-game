extends Control

func _ready():
	get_tree().paused = false
	self.hide()

func _input(event):
	if GameState.game_state == "RUNNING" and event.is_action_pressed("pause"):
		print('working!!!')
		if not self.is_visible_in_tree():
			self.show()
			get_tree().paused = true
		else:
			self.hide()
			get_tree().paused = false
