extends Area2D

func _ready() -> void:
	get_viewport().size_changed.connect(_on_view_port_resized)
	_on_view_port_resized()
	
func _on_view_port_resized() -> void:
	var half_vp_width = get_viewport_rect().size.x / 2
	position.x = half_vp_width
