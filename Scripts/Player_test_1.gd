extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var velocity = Vector2()
var speed = 1

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	pass

func _fixed_process(delta):

	var force = get_global_pos()

	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed #* force.y
		pass
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speed #* force.y
		pass
	else:
		pass

	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed #* force.x
		pass
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed #* force.x
		pass
	else:
		pass

	var dampen = 0.7

	velocity += velocity * delta
	velocity *= dampen

	move(velocity)

	pass