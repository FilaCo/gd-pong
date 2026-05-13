extends CharacterBody2D

@onready var paddle_radius = $CollisionShape2D.shape.radius
@export var speed = 400 # How fast the player will move (pixels/sec).

func _ready() -> void:
	get_viewport().size_changed.connect(_on_view_port_resized)
	_on_view_port_resized()
	
func _process(delta: float) -> void:
	var direction = Input.get_axis("move_up", "move_down")
	velocity.y = direction * speed

	move_and_slide()
	

	
func _on_view_port_resized() -> void:
	var half_vp_width = get_viewport_rect().size.x / 2
	position.x = -half_vp_width + paddle_radius
