extends Control

func _on_calc_pressed() -> void:
	for num in range(2, 37, 2):
		$Label.text += str(num) + " "

func _on_clear_pressed() -> void:
	$Label.text = ""

func _on_exit_pressed() -> void:
	get_tree().quit()
