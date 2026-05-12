extends StaticBody2D

func _ready() -> void:
	get_viewport().size_changed.connect(_on_view_port_resized)
	_on_view_port_resized()
	
func _on_view_port_resized() -> void:
	var half_vp_height = get_viewport_rect().size.y / 2
	position.y = -half_vp_height
