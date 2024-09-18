extends Control




func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Number    Square    Square Root")
	for num in range(1, 51):
		var numsqr = num**2
		var numsqrt = sqrt(num)
		var line = "%d    %d    %.4f" %[num, numsqr, numsqrt]
		$ItemList.add_item(line)

func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
