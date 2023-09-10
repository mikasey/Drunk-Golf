extends StaticBody2D

@onready var sprite = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_golf_hole_in_hole():
	sprite.region_rect.position.y += 16
	sprite.region_rect.position.x += 8
	pass # Replace with function body.
