extends Node2D

func _ready() -> void:
	$World/CollisionPolygon2D/Polygon2D.polygon = \
		$World/CollisionPolygon2D.polygon
	pass
