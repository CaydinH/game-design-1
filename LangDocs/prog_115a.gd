extends Control



func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Number")
	for num in range(2, 36+1, 2):
		var line = str(num)
		$ItemList.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
