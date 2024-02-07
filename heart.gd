extends CharacterBody3D

@onready var _animated_sprite = $AnimatedSprite3D

func _process(_delta):
	if Input.is_action_pressed("summon"):
		_animated_sprite.play("heart")
	else:
		_animated_sprite.stop()
