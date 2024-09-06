extends Control


func _on_btn_calc_pressed() -> void:
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	var num3 = int($TxtNum3.text)
	var num4 = int($TxtNum4.text)
	var sum = num1 + num2 + num3 + num4
	var ave = float(sum) / 4
	$LblSum.text = "The sum of the four
 numbers is " + str(sum)
	$LblAve.text = "The average of the four 
numbers is " + str(ave)


func _on_btn_clear_pressed() -> void:
	$LblSum.text = "The sum of the four
 numbers is"
	$LblAve.text = "The average of the four 
numbers is"
	$TxtNum1.text = ""
	$TxtNum2.text = ""
	$TxtNum3.text = ""
	$TxtNum4.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
