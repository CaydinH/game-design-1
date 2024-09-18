extends Control



func _on_btn_calc_pressed() -> void:
	var egg = int($LineEdit.text)
	var dozen = floor(egg/12)
	var eggsRemain = egg % 12
	var price = 1.0
	
	if dozen > 0 and dozen <=3:
		price = 0.50
	elif dozen >= 4 and dozen <=5:
		price = 0.45
	elif dozen >= 6 and dozen <= 10:
		price = 0.40
	else:
		price = 0.35
		return
		
	var PriceDoz = price*dozen
	var PriceEgg = (eggsRemain * PriceDoz/ 12.0)
	var PriceTot = PriceDoz+PriceEgg
	$Label2.text = "Total cost is: $ " + str(PriceTot)


func _on_btn_clear_pressed() -> void:
	$LineEdit.text = ""
	$Label2.text = "Total cost is:"


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
