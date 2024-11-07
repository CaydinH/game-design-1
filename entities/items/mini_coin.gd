extends BaseItem

func interact(player):
	player.pickup_money(20)
	remove()
