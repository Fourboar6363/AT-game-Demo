extends Node2D


@export var speed =150

func _process(delta):
	position.y += speed * delta
	if position.y > 600: 
		queue_free


func _on_body_entered(body):
	if body.name == "Player":  # Or use a group check if names vary
		body.kill()
