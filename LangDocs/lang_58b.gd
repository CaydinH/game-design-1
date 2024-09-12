extends Control





func _on_btn_calc_pressed() -> void:
	pass


func _on_btn_clear_pressed() -> void:
	$TxtNumA.text = ""
	$TxtNumB.text = ""
	$TxtNumC.text = ""
	$LblRoots.text = "The roots are:"


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
