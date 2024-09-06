extends Control




func _on_btn_calc_pressed() -> void:
	var rad = int($TxtRad.text)
	var area = float(3.14 * rad)**2
	var cir = 3
	$LblArea.text = str(area)
