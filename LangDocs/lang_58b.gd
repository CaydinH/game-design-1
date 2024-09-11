extends Control





func _on_btn_calc_pressed() -> void:
	pass # Replace with function body.


func _on_btn_clear_pressed() -> void:
	$TxtNumA.text = ""
	$TxtNumB.text = ""
	$TxtNumC.text = ""
	$LblRoots.text = "The roots are:"


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
