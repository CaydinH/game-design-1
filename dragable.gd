extends RigidBody2D

var dragging = false
var offset = Vector2.ZERO

func _process(delta):
	if dragging:
		self.global_position = get_global_mouse_position() - offset

func _on_button_button_down() -> void:
	dragging = true
	offset = get_global_mouse_position() - self.global_position
	freeze = true


func _on_button_button_up() -> void:
	dragging = false
	freeze = false


func _on_body_entered(body: Node) -> void:
	if body.name == "Plt_Player":
		body.queue_free()
