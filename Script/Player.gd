extends CharacterBody2D

var speed: float = 200.0

func _physics_process(delta: float) -> void:
	var vel: Vector2 = Vector2.ZERO

	if Input.is_action_pressed('ui_right'):
		vel.x += 1
	if Input.is_action_pressed('ui_left'):
		vel.x -= 1
	if Input.is_action_pressed('ui_down'):
		vel.y += 1
	if Input.is_action_pressed('ui_up'):
		vel.y -= 1

	vel = vel.normalized() * speed
	velocity = vel
	move_and_slide()

