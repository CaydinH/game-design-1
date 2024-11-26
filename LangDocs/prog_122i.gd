extends Control


func _on_btn_calc_pressed() -> void:
	$IL.add_item("Number    Cube Root    Cube")
	for num in range(-25, 1):
		var cubert = abs(num)**(1.0/3)
		var cube = num**3
		var line = "       %d    -%.4f    %d" %[num, cubert, cube]
		$IL.add_item(line)
		
	for num in range(1, 26):
		var cubert2 = num**(1.0/3)
		var cube2 = num**3
		var line2 = "        %d    %.4f    %d" %[num, cubert2, cube2]
		$IL.add_item(line2)


func _on_btn_clear_pressed() -> void:
	$IL.clear()


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
