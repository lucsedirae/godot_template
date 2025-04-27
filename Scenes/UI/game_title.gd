# /UI/game_title.gd
extends RichTextLabel
@export var speed = 200
var direction = Vector2(1, 0)
var target_x_position = 0
var is_moving = true

func _ready():
	# Calculate the horizontal center of the viewport/screen
	var viewport_width = get_viewport_rect().size.x
	target_x_position = viewport_width / 2
	
	# Adjust for the width of your RichTextLabel
	# This centers the RichTextLabel horizontally
	target_x_position -= size.x / 2

# System
func _process(delta):
	if is_moving:
		position += direction * speed * delta
		
		# Check if we've reached or passed the target horizontal position
		if (direction.x > 0 and position.x >= target_x_position) or \
		   (direction.x < 0 and position.x <= target_x_position):
			# Only set the x position to the target
			position.x = target_x_position
			is_moving = false
