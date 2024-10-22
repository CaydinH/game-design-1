extends RigidBody2D

func _on_button_pressed() -> void:
	self.queue_free() #deletes self from world
	print("hello","4")
