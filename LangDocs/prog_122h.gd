extends Control


func _on_btn_calc_pressed() -> void:
	$ItemList.add_item("Number  Square  Square Root  Cube  Fourth Root")
	for num in range(1, 21):
		var sqr = num**2
		var sqrrt = num**(1.0/2)
		var cube = num**3
		var fourth = num**(1.0/4)
		var line = "%d    %d    %.4f    %d    %.4f" %[num, sqr, sqrrt, cube, fourth]
		$ItemList.add_item(line)


func _on_btn_clear_pressed() -> void:
	$ItemList.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
