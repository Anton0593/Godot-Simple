extends RigidBody2D

var speed = 10
var velocity = Vector2.ZERO

func _process(delta):
	pass
	#velocity = Vector2.UP.rotated(rotation) * speed
	#position -= velocity * delta


func _on_body_entered(body):
	body.hide() 
	body.hit.emit()
