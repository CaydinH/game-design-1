extends Control




func _on_btn_calc_pressed() -> void:
	var rad = float($TxtRad.text)
	var area = 3.14159 * rad**2
	var cir = 2*3.14159*rad
	$LblArea.text = "%.3f" % area
	$LblCir.text = "%.3f" % cir


func _on_btn_clear_pressed() -> void:
	$LblArea.text = ""
	$LblCir.text = ""
	$TxtRad.text = ""
	


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
