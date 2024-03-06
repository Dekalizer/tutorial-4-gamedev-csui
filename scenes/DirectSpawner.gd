extends Node2D

export (PackedScene) var obstacle

func _process(delta):
	randomize() 
	var random_number = randi() % 500 + 1
	if random_number == 1:
		var spawned = obstacle.instance()
		get_parent().add_child(spawned)
		var spawn_pos = global_position
		spawned.global_position = spawn_pos
