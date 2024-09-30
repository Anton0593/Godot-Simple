extends Node2D
signal hit
@export var asteroid_scene: PackedScene
var score

func _ready():
	var asteroid = asteroid_scene.instantiate()
	asteroid.position = ($SpawnPoint.position)
	add_child(asteroid)




func new_game():
	score= 0
	$HUD.update_score(score)
	$HUD.show_message("Get Ready")
	$HUD.show_message("Сбей Астероиды")


func _on_score_timer_timeout():
	score += 1


func _on_message_timer_timeout() -> void:
	pass # Replace with function body.
