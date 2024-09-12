extends Control



func _on_btn_calc_pressed() -> void:
	var num1 = int($TxtNum1.text)
	var num2 = int($TxtNum2.text)
	var sum = num1+num2
	var diff = num1-num2
	var product = num1*num2
	var avg = (num1+num2)/2.0
	var AV = abs(diff)
	var Max = 1
	var Min = 1
	if(num1 > num2):
		Max = num1
		Min = num2
	elif(num2 > num1):
		Max = num2
		Min = num2
	
	$LblOgNums.text = "The Original Numbers Are: " + str(num1) + " - " + str(num2)
	$LblSum.text = "Sum: " + str(sum)
	$LblDiff.text = "Difference: " + str(diff)
	$LblProduct.text = "Product: " + str(product)
	$LblAverage.text = "Average: " + str(avg)
	$LblAV.text = "Absolute Value: " + str(AV)
	$LblMax.text = "Maximum: " + str(Max)
	


func _on_btn_clear_pressed() -> void:
	$TxtNum1.text = ""
	$TxtNum2.text = ""
	$LblOgNums.text= "The Original Numbers Are:"
	$LblSum.text = "Sum:"
	$LblDiff.text = "Difference:"
	$LblProduct.text = "Product:"
	$LblAverage.text = "Average:"
	$LblAV.text = "Absolute Value:"
	$LblMax.text = "Maximum:"
	$LblMin.text = "Minimum:"


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
