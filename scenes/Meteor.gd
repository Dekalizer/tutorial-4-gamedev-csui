extends RigidBody2D

export var sceneName : String = "LoseScreen"

func _on_Meteor_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene("res://scenes/" + sceneName + ".tscn")
	else:
		queue_free()
