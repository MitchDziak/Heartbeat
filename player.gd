extends CharacterBody3D

@onready var _animated_sprite = $AnimatedSprite3D

# Player movement speed
@export var speed = 5

var target_velocity = Vector3.ZERO

func _physics_process(delta):
	# Get player input
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_forward"):
		direction.z -= 20
	if Input.is_action_pressed("move_backward"):
		direction.z += 20
	if Input.is_action_pressed("move_left"):
		direction.x -= 20
	if Input.is_action_pressed("move_right"):
		direction.x += 20

	# Normalize direction vector
	if direction.length() > 0:
		direction = direction.normalized()

	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed
	# Move the player
	velocity = target_velocity
	move_and_slide()

# Animation for switching attack styles based on movement
func _process(_delta):
	if Input.is_action_pressed("switch_mage"):
		_animated_sprite.play("mage")
	if Input.is_action_pressed("switch_range"):
		_animated_sprite.play("range")
	else:
		_animated_sprite.stop()


