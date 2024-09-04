extends Control



func _on_btn_show_pressed() -> void:
	$Label.text= "I am bad at coding and I water ski"


func _on_btn_hide_pressed() -> void:
	$Label.text= ""


func _on_btn_exit_pressed() -> void:
	get_tree().quit()
