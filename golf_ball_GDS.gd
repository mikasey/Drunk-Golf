extends RigidBody2D

@onready var sprite = $Sprite2D
@onready var lable = $Sprite2D/Label
var clicked = false

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sprite.global_rotation = 0
	if clicked:
		if Input.is_action_just_released("mouse_left_click"):
			clicked = false
			score+=1
			lable.text = str(score)
			sprite.self_modulate =Color("white")
	pass


func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("mouse_left_click"):
		apply_impulse(Vector2(randf_range(-50,50),randf_range(-50,50)))
		clicked = true
		sprite.self_modulate = Color("yellow_green")
	
		
	pass # Replace with function body.


func _on_button_button_up():
	apply_impulse(Vector2(randf_range(-50,50),randf_range(-50,50)))
	clicked = true
	sprite.self_modulate = Color("yellow_green")
	pass # Replace with function body.
