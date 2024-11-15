extends BaseItem
func _init(): super._init(5)

func interact(player):
	player.data.max_health += 20
	print(player.data.max_health)
	remove()
