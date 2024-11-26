extends Control



func _on_btn_show_pressed() -> void:
	$Label.text= "Gym"


func _on_btn_hide_pressed() -> void:
	$Label.text= ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
