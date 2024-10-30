extends Node2D

var physball = preload("res://phys_ball.tscn")

func _ready() -> void:
	$Panel/grav_slider.value = $phys_ball.gravity_scale
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and entered == false:
		var nball = physball.instantiate()
		nball.position = event.position
		nball.gravity_scale = $Panel/grav_slider.value
		nball.inertia = float($Panel/txtInseria.text)
		nball.linear_velocity = Vector2(float($Panel/txtValX.text), float($Panel/txtValY.text))
		add_child(nball)

func _on_grav_slider_value_changed(value: float) -> void:
	for child in get_children():
		if child is RigidBody2D:
			child.gravity_scale = value

func _on_button_pressed() -> void:
	for child in get_children():
		if child is RigidBody2D:
			var force = randi_range(500,10000)
			child.apply_central_force(Vector2(1,0) * force) # or Vector2.RIGHT
			


func _on_button_3_pressed() -> void:
	var inertia = float($Panel/txtInseria.text)
	var v_x = float($Panel/txtValX.text)
	var v_y = float($Panel/txtValY.text)
	var velocity = Vector2(v_x, v_y)
	for child in get_children():
		if child is RigidBody2D:
			child.inertia = inertia
			child.linear_velocity = velocity

func _physics_process(delta: float) -> void:
	var nball = physball.instantiate()
	var acceleration = nball.linear_velocity*delta
	nball.linear_velocity *= acceleration
	print(delta)
	print(entered)

var entered = false
func _on_panel_mouse_entered() -> void:
	entered = true


func _on_rigid_body_2d_mouse_exited() -> void:
	entered = false # not finished
