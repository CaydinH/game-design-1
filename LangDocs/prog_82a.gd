extends Control



func _on_btn_calc_pressed() -> void:
	var limit = int($TxtLimit.text)
	var speed = int($TxtSpeed.text)
	var milesover = speed - limit
	var fine = 20.0 + (milesover*5)
	$LblFine.text = "%.2f" % fine


func _on_btn_clear_pressed() -> void:
	$TxtLimit.text = ""
	$TxtSpeed.text = ""
	$LblFine.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
