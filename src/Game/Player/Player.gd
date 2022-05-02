extends KinematicBody2D


export (int) var speed = 120

var velocity = Vector2()


func _physics_process(delta):
	get_node(("AnimationPlayer")).play("idle")
	velocity = move_and_slide(velocity)





















func _input(event):
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
