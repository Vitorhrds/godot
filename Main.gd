
extends Node2D

var speed = 2
const GRAVITY = 0
const WALK_SPEED = 200

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += delta * GRAVITY

	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0

# movimenta o dragão
		$dragon.position.x += 1*speed
		if ($dragon.position.x) == 200:
			#$dragon.position.x -= 1*speed
			
			#for $dragon.position.x == 200
			$dragon.position.x += 1*speed

	# We don't need to multiply velocity by delta because "move_and_slide" already takes delta time into account.

	# The second parameter of "move_and_slide" is the normal pointing up.
	# In the case of a 2D platformer, in Godot, upward is negative y, which translates to -1 as a normal.
	#move_and_slide(velocity, Vector2(0, -1))



