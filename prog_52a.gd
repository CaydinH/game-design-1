extends Control



func _on_btn_calc_pressed() -> void:
	var lenght = int($TxtLen.text)
	var width = int($TxtWid.text)
	var area = lenght * width
	var perim = 2 * lenght + 2 * width
	$LblArea.text= "Area: " + str(area)
	$LblPerim.text= "Perimeter: " + str(perim)
	# Opperators: + - * / %     **(Pow)
	# str - string (text)
	# int - integer (whole num)
	# flaot
func _on_btn_clear_pressed() -> void:
	$TxtLen.text= ""
	$TxtWid.text= ""
	$LblArea.text= ""
	$LblPerim.text= ""
	


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
