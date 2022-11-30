extends Area2D

export var velocity = Vector2()

var lives = 1

func _ready():
	set_process(true)
	pass

func _process(delta):
	translate(velocity * delta)
	
	if get_position().y - 8 >= get_viewport_rect().size.y:
		queue_free()
	pass

func takeDamage(damage):
	lives -= damage
	if lives <= 0:
		queue_free()
	pass

func _on_EnemyKamikaze_area_entered(area):
	if area is Player:
		area.takeDamage(1)
	pass
