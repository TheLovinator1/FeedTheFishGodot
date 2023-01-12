extends CharacterBody2D


@export var speed = 400 # How fast the player will move (pixels/sec).

func _physics_process(_delta):
    velocity = Vector2()
    if Input.is_action_pressed("move_right"):
        velocity.x += 1
    if Input.is_action_pressed("move_left"):
        velocity.x -= 1
    if Input.is_action_pressed("move_down"):
        velocity.y += 1
    if Input.is_action_pressed("move_up"):
        velocity.y -= 1

    if velocity.length() > 0:
        velocity = velocity.normalized() * speed
    
    move_and_slide()