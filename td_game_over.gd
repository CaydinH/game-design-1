extends CanvasLayer

func _ready() -> void:
	self.process_mode = Node.PROCESS_MODE_ALWAYS


func _on_btn_restart_pressed() -> void:
	get_tree().reload_current_scene()
	self.hide()


func _on_btn_quit_pressed() -> void:
	get_tree().quit()
