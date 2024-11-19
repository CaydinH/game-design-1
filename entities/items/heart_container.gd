extends BaseItem

func interact(player):
	player.pickup_heart_container()
	remove()
