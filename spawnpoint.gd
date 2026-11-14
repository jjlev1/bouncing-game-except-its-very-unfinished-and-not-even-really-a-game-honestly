extends CharacterBody2D

const ENEMY_SCENE = preload("res://enemy.tscn")

func spawn_enemy() -> void:
	var enemy_instance = ENEMY_SCENE.instantiate()
	add_child(enemy_instance)
	

func _on_timer_timeout() -> void:
	pass
