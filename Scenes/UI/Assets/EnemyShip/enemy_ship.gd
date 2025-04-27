# /UI/Assets/EnemyShip/enemy_ship.gd
extends Sprite2D

@export var speed = 200
var direction = Vector2(1, 0) 

func _process(delta):
	position += direction * speed * delta
