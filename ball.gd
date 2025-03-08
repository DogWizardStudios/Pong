extends CharacterBody2D

const BallSpeed = 400

func _physics_process(delta):
	move_and_slide()
