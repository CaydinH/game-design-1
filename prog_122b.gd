extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Hours    Pay")
	for num in range(1,41):
		var line = str(num)
		var pay = str(num*4)
		$ItemList.add_item(line + "      " + pay)
		


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
