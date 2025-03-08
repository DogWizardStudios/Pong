extends CharacterBody2D

@export var PADDLE_SPEED = 500

func _physics_process(delta):
	get_input()
	move_and_slide()

func get_input():
	var input_direction = Input.get_axis("up", "down")
	velocity.y = input_direction * PADDLE_SPEED
