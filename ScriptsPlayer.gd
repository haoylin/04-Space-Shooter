extends KinematicBody2D

export var health = 100
export var points = 0
export var margin = 5
export var y_range = 150
export var acceleration = 0.1

var velocity = Vector2(0,0)

onready var VP = get_viewport_rect().size


func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("fire"):
		pass
	if Input.is_action_just_pressed("left"):
		velocity.x -= acceleration
	if Input.is_action_just_pressed("right"):
		velocity.x += acceleration
	if Input.is_action_just_pressed("up"):
		velocity.y -= acceleration
	if Input.is_action_just_pressed("down"):
		velocity.y += acceleration
	
	if position.x < margin:
		velocity.x = 0
		position.x = margin
	if position.x > VP.x - margin:
		velocity.x = 0
		position.x = VP.x - margin
	if position.y < VP.y- y_range:
		velocity.y = 0
		position.y = VP.y- y_range
	if position.y > VP.y - margin:
		velocity.y = 0
		velocity.y = VP.y - margin
	
	var collision = move_and_collide(velocity)
	



















