extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var death_screen_time = 300
var counter = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if counter == death_screen_time:
		get_tree().change_scene("res://scenes/Level1.tscn")
	counter += 1
