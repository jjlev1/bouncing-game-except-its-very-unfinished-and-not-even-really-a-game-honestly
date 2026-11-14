extends CharacterBody2D

var screen_size: Vector2
const INITIAL_SPEED: int=750
var speed: int = INITIAL_SPEED
var direction: Vector2

func _ready():
	screen_size = get_viewport_rect().size
	position = Vector2(screen_size.x / 2, screen_size.y / 	2)
	direction = get_random_direction()

func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())

func get_random_direction() -> Vector2:
	var new_direction = Vector2()
	new_direction.x = randi_range(-1,1)
	new_direction.y = randf_range(-1,1)
	return new_direction.normalized()
	

	

	
	
	
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().call_deferred("reload_current_scene")
