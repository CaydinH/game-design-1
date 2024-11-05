extends CanvasLayer

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var hearts = $playerHealth/hearts

const HEART_ROW_SIZE = 10
const HEART_OFFSET = 16

func create_heart():
	var new_heart = Sprite2D.new()
	new_heart.texture = hearts.texture
	new_heart.hframes = hearts.hframes
	new_heart.vframes = hearts.vframes
	new_heart.frame = 8
	hearts.add_child(new_heart)
	
func draw_hearts():
	for heart in hearts.get_children():
		hearts.remove_child(heart)
	for i in range(int(player.data.max_health) / 20):
		create_heart() #1 heart per 20 hp

func _ready() -> void:
	draw_hearts()

func _process(delta: float) -> void:
	var player_health = player.data.health
	var full_hearts = floor(player_health / 20)
	var remander = int(player_health) % 20
	$Label.text = str(player.data.money)
	
	for heart in hearts.get_children():
		var index = heart.get_index()
		var x = (index % HEART_ROW_SIZE) * HEART_OFFSET
		var y = (index / HEART_ROW_SIZE) * HEART_OFFSET
		heart.position = Vector2(x, y)
		
		# Frame 8 is empty, 7 is 1/4, 6 is half, 5 is 3/4, 4 is full
		if index > full_hearts:
			heart.frame = 8
		elif index == full_hearts:
			heart.frame = 8 - int(remander / 5)
		elif index < full_hearts:
			heart.frame = 4
	pass
