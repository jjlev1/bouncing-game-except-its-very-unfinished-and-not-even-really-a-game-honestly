extends CharacterBody2D

func _physics_process(delta):
	var input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_direction *400
	move_and_slide()
	


func _on_pickuparea_area_entered(area: Area2D):
	if area.is_in_group("apple") and not $carriedapple.visible:
		area.queue_free()
		$carriedapple.visible= false
		
	if area.is_in_group("bucket") and $carriedapple.visible:
		$carriedapple.visible= false
