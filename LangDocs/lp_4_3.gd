extends Control



func _on_btn_calc_pressed() -> void:
	var egg = int($LineEdit.text)
	var dozen = floor(egg/12)
	var eeggs = egg % 12
	var price = 1.0
	var PriceDoz = price*dozen
	var PriceEgg = eeggs * (1/12*price)
	var PriceTot = PriceDoz+PriceEgg
	
	if dozen > 0 and dozen <=3:
		price = 0.50
	elif dozen >= 4 and dozen <=5:
		price = 0.45
	elif dozen >= 6 and dozen <= 10:
		price = 0.40
	else:
		price = 0.35
		return
	$Label2.text = "Total cost is: $" + str(PriceTot)
		
	#if size > 100000 and weight > 27:
		#$LblOut.text = "Too Heavy and Too Large"


func _on_btn_clear_pressed() -> void:
	$LineEdit.text = ""
	$Label2.text = "Total cost is:"


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
