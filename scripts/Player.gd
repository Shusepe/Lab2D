extends Area2D

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


