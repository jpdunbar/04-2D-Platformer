extends Node2D

onready var Enemy3 = load("res://Enemy/Enemy3.tscn")
export var initial_position = Vector2(255, 480)

func _process(_delta):
	if not has_node("Enemy3"):
		var enemy3 = Enemy3.instance()
		enemy3.name = "Enemy3"
		add_child(enemy3)
