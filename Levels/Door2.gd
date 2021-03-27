extends Area2D

func _ready():
	pass

func _on_Door_body_entered(body):
	if Global.save_data["level"] == 2:
		Global.save_data["level"] = 1
		var _s = get_tree().change_scene("res://UI/Game_Over.tscn")
