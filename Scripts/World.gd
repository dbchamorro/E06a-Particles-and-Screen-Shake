extends Node2D

onready var Camera = $Camera
export add_trauma = 0


func process(delta):
	if Input.is_action_pressed("left"):
		add_trauma += 0.2
	if Input.is_action_pressed("right"):
		add_trauma += 0.2
	if Input.is_action_pressed("down"):
		add_trauma +=0.2
	if Input.is_action_pressed("up"):
		add_trauma +=0.2

func _physics_process(delta):
	pass

func add_trauma(amount):
	trauma = min(trauma + amount, 1.0)

#get_viewport().get_camera().add_trauma(0.2)
