extends Button

var balls_array = []
# Called when the node enters the scene tree for the first time.

func _ready():
	balls_array = get_tree().get_nodes_in_group("GolfBall")
	for ball in balls_array:
		button_up.connect(ball._on_button_button_up)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
