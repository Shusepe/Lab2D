extends Area2D
class_name Player

var lives = 5

func _ready():
	set_process(true)
	pass

func _process(delta):
	var motion = (Utils.mouse_pos.x - get_position().x)
	translate(Vector2(motion, 0))
	
	var position = get_position()
	position.x = clamp(position.x, 0+5, Utils.view_size.x - 5)
	set_position(position)
pass

func takeDamage(damage):
	lives -= damage
	if lives <= 0:
		queue_free()
	pass

func _on_Player_area_entered(area):
	if area.is_in_group("enemies"):
		area.takeDamage(1)
	pass
