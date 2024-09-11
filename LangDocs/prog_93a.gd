extends Control




func _on_btn_calc_pressed() -> void:
	var KWH = float($TxtKWH.text)
	var base = KWH*4.75/100
	var surcharge = base*0.1
	var city = base*0.03
	var pay = base + surcharge + city
	var payafter = pay*1.04
	$LblBase.text = "Base Rate: $%.2f" % base
	$LblSur.text = "Surcharge: $%.2f" % surcharge
	$LblCity.text = "City Tax: $%.2f" % city
	$LblPay.text = "Pay: $%.2f" % pay
	$LblPayAfter.text = "After May 20th Pay: $%.2f" % payafter


func _on_btn_clear_pressed() -> void:
	$LblBase.text = "Base Rate:"
	$LblSur.text = "Surcharge:"
	$LblCity.text = "City Tax:"
	$LblPay.text = "Pay:"
	$LblPayAfter.text = "After May 20th Pay:"
	$TxtKWH.text = ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
