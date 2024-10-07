extends RigidBody2D

var speed = 100
var direction = -1

func _ready() -> void:
	$Timer.start()
	update_animation(direction)
	
func _physics_process(delta: float) -> void:
	self.linear_velocity.x = speed * direction

func _on_timer_timeout() -> void:
	direction *= -1
	update_animation(direction)

func _on_body_entered(body: Node) -> void:
	if body.name == "Plt_Player":
		body.queue_free()
		OS.alert("You died!?")
		get_tree().reload_current_scene()
		
@onready var anim = $AnimatedSprite2D
func update_animation(direction):
	if direction != 0:
		anim.play("move")
		anim.flip_h = direction <0 # Flip sprite if moving left
	else:
		anim.play("default")
