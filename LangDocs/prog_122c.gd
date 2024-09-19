extends Control


func _on_btn_calc_pressed() -> void:
	for num in range(2,11, 2):
		var num2 = str(num + 1)
		var num3 = str(num*2)
		var num4 = str(num**2)
		$ItemList.add_item(str(num) + "    " + str(num2) + "    " + str(num3) + "    " + str(num4))


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
