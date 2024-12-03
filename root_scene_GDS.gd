extends Node2D
@onready var game_end_label = $GolfHole/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("reload"):
		get_tree().reload_current_scene()
	pass


func _on_button_button_up():
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_golf_hole_in_hole():
	game_end_label.visible = true
	game_end_label.text = "Congradulation!\nHole in: " + str(game_end_label.get_parent().score) + "\n\nGood job Loser!"
	pass # Replace with function body.
