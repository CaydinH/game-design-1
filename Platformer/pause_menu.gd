extends Control

func _ready() -> void:
	self.process_mode = Node.PROCESS_MODE_ALWAYS


func _on_resume_pressed() -> void:
	self.hide()
	


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_restart_pressed() -> void:
	self.hide()
	get_tree().paused = false
	get_tree().reload_current_scene()
