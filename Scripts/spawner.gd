extends Node2D

@onready var enemy_scene = preload("res://Scenes/enemy.tscn")  # Make sure the path is correct
@onready var spawn_timer = $Timer  # Assumes your Timer node is called "Timer"

func _ready() -> void:
	randomize()  # Ensure randi() gives different values every time
	spawn_timer.start()

func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(randi() % 480, 0)  # Adjust 480 to your scene width
	add_child(enemy)
