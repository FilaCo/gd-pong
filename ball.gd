extends RigidBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	var angle 
	if rng.randi_range(1, 2) == 1:
		angle = rng.randf_range(3 * PI / 4., 5 * PI / 4.)
	else:
		angle = rng.randf_range(-PI / 4., PI / 4.)
	var direction = Vector2(cos(angle), sin(angle))
	var initial_speed = randf_range(300, 500)
	
	linear_velocity = direction * initial_speed
	
