extends Area2D



func _on_body_entered(body: Node) -> void:
	if body.name == "Plt_Player":
		body.queue_free()
		OS.alert("You died!?")
		get_tree().reload_current_scene()
