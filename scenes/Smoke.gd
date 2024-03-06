extends Node2D

export (PackedScene) var smoke_scene

func _ready():
	repeat()

func spawn():
	var smoke_instance : RigidBody2D = smoke_scene.instance()
	get_parent().add_child(smoke_instance)
	var spawn_pos = global_position

	smoke_instance.global_position = spawn_pos

func repeat():
	spawn()
	yield(get_tree().create_timer(1), "timeout")
	repeat()
