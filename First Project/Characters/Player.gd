extends KinematicBody2D

onready var animation = $AnimatedSprite
const SPEED = 100
const GRAVITY = 10
const JUMP_POWER = -250
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var on_ground = false
var jump_count = 0

var is_attacking = false

func _physics_process(delta): 
	
	# Basic movement for left and right
	if Input.is_action_pressed("ui_right") && is_attacking == false:
		velocity.x = SPEED
		animation.play("run")
		animation.flip_h = false
	elif Input.is_action_pressed("ui_left") && is_attacking == false:
		velocity.x = -SPEED
		animation.play("run")
		animation.flip_h = true
	else:
		velocity.x = 0
		if is_attacking == false:
			animation.play("idle")
	
	#jump code function
	if Input.is_action_just_pressed("jump"):
		if jump_count < 1:
			jump_count += 1
			velocity.y = JUMP_POWER
			on_ground = false
		
	

	
	if Input.is_action_just_pressed("attack") and is_on_floor():
		is_attacking = true
		animation.play("attack")
		
		
	velocity.y += GRAVITY
		
	if is_on_floor():
		on_ground = true
		jump_count = 0
	else:
		on_ground = false
		if velocity.y < 0:
			animation.play("jump")
		else:
			animation.play("fall")
		
		
	velocity = move_and_slide(velocity, FLOOR)


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "attack":
		is_attacking = false
