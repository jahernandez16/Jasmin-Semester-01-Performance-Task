extends Area2D

var speed = 400

func _ready():
	pass 


func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_down"):
		velocity += 1
	if Input.is_action_pressed("move_left"):
		velocity -= 1	
	if Input.is_action_pressed("move_up"):
		velocity -= 1 
	if Input.is_action_pressed("move_right"):
		velocity += 1	
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		
	
