extends "res://ballscript.gd"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player_node or body.is_in_group("player"):
		get_tree().call_deferred("reload_current_scene")
