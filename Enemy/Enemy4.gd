extends KinematicBody2D

export var constraint_left = Vector2(0,0)
export var constraint_right = Vector2(100,0)
export var speed = 2.8

func _ready():
	pass

func _physics_process(_delta):
	if not $Tween.is_active():
		var constraint = constraint_left
		$Sprite.flip_h = false
		if position != constraint_right:
			constraint = constraint_right
			$Sprite.flip_h = true
		$Tween.interpolate_property(self, "position", position, constraint, speed, Tween.TRANS_EXPO, Tween.EASE_IN)
		$Tween.start()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
