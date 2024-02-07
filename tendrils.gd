extends CharacterBody3D

@onready var _animated_sprite = $AnimatedSprite3D

func _process(_delta):
	if Input.is_action_pressed("attack"):
		_animated_sprite.play("tendrils")
	else:
		_animated_sprite.stop()
