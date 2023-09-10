extends Area2D

@onready var sprite = $Sprite2D

signal in_hole

var is_hole_full = false
var is_hole_bad = false

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	if((is_hole_full == false) and body.is_in_group("GolfBall")):
		in_hole.emit()
		score = body.score
		body.queue_free()
		
		
	pass


func _on_in_hole():
	sprite.region_rect.position.y += 8
	pass # Replace with function body.
