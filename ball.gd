extends CharacterBody2D

const BallSpeed = 400

@onready var cpu_score = $"../CPUScore"
@onready var player_score = $"../PlayerScore"
@export var respawn = 1

func _physics_process(delta):
	update_movement()
	move_and_slide()


func _on_cpu_score_area_entered(area):
	cpu_score += 1
	$Timer.start(respawn)

func _on_player_score_area_entered(area):
	player_score += 1
	$Timer.start(respawn)

func update_movement():
