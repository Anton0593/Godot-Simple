extends CharacterBody2D

var speed = 100
func get_input():
	var input_dir = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
	var raycast_node = get_node("RayCast2D")
	if Input.is_key_pressed(KEY_F):
		if raycast_node.is_colliding() != null:
			var object_collided_with = raycast_node.get_collider() != null
			if object_collided_with.is_in_group("Enemy"):
				object_collided_with.die()
