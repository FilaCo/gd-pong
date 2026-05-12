extends CharacterBody2D

@onready var paddle_radius = $CollisionShape2D.shape.radius

func _ready() -> void:
	get_viewport().size_changed.connect(_on_view_port_resized)
	_on_view_port_resized()
	
func _on_view_port_resized():
	var half_vp_width = get_viewport_rect().size.x / 2
	position.x = -half_vp_width + paddle_radius
