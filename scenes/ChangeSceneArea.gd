extends Area2D

export var sceneName : String = "Level1"

func _on_ChangeSceneArea_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene("res://scenes/" + sceneName + ".tscn")
