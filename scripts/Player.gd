extends Area2D

func _ready():
	set_process(true)
	pass

func _process(delta):
	var motion = (get_global_mouse_position().x - get_position().x)
	translate(Vector2(motion, 0))
	var viewSize = get_viewport_rect().size
	var position = get_position()
	position.x = clamp(position.x, 0+5, viewSize.x - 5)
	set_position(position)
pass


