extends Control




func _on_btn_calc_pressed() -> void:
	var weight = int($TxtWeight.text)
	var length = int($TxtLength.text)
	var width = int($TxtWidth.text)
	var height = int($TxtHeight.text)
	var size = length*width*height
	
	if size > 100000 and weight > 27:
		$LblOut.text = "Too Heavy and Too Large"
	elif  size > 100000:
		$LblOut.text = "Too Large"
	elif weight > 27:
		$LblOut.text = "Too Heavy"
	else:
		$LblOut.text = "All Good"
		return


func _on_btn_clear_pressed() -> void:
	$TxtWeight.text = ""
	$TxtLength.text = ""
	$TxtWidth.text = ""
	$TxtHeight.text = ""
	$LblOut.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
