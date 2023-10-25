extends KinematicBody2D

const GRAVITY = 10
const SPEED = 30
const FLOOR =  Vector2(0, -1)

var velocity = Vector2()
onready var animation = $AnimatedSprite

func _ready():
	pass # Replace with function body.
	

func _physics_process(delta):
	velocity.x = SPEED
	animation.play("Run")
	velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity, FLOOR)

