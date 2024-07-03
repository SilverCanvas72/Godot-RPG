extends CharacterBody2D


const speed = 500
var current_dir = "down"


func _physics_process(delta):
	player_movement(delta)
	play_animation()
	
func player_movement(delta):
	if Input.is_action_pressed("left"):
		current_dir = "left"
		velocity.x = -speed
		velocity.y = 0
		
	elif Input.is_action_pressed("right"):
		current_dir = "right"
		velocity.x = speed
		velocity.y = 0	
		
	elif Input.is_action_pressed("up"):
		current_dir = "up"
		velocity.x = 0
		velocity.y = -speed	
		
	elif Input.is_action_pressed("down"):
		current_dir = "down"
		velocity.x = 0
		velocity.y = speed	
	else:

		velocity.x =0
		velocity.y = 0
		
	move_and_slide()	
	
func play_animation():
	var dir = current_dir
	var animation = $AnimatedSprite2D
		
	if dir == "left":
		animation.flip_h = true
		animation.play("side-idle")
		
	elif dir == "right":
		animation.flip_h = false
		animation.play("side-idle")
		
	elif dir == "down":
		animation.play("front-idle")
		
	elif dir == "up":
		animation.play("back-idle")
		
			
		
		
		
