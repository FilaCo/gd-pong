extends CharacterBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	var angle 
	if rng.randi_range(1, 2) == 1:
		angle = rng.randf_range(3 * PI / 4., 5 * PI / 4.)
	else:
		angle = rng.randf_range(-PI / 4., PI / 4.)
	var direction = Vector2(cos(angle), sin(angle))
	var initial_speed = randi_range(400, 600)
	
	velocity = direction * initial_speed

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		
		var thing_we_hit = collision.get_collider()
		if thing_we_hit.is_in_group("paddles"):
			velocity *= 1.05
