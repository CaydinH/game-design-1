extends Control



func _on_btn_show_pressed() -> void:
	$Label.text= "Swim"


func _on_btn_clear_pressed() -> void:
	get_tree().quit()


func _on_btan_exit_pressed() -> void:
	$Label.text= ""