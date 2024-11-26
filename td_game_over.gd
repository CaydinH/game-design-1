extends CanvasLayer




func _on_btn_restart_pressed() -> void:
	get_tree().reload_current_scene()
	self.hide()


func _on_btn_quit_pressed() -> void:
	get_tree().quit()
