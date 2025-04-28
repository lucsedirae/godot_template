# /UI/Assets/Cloud/dark_cloud.gd
extends Sprite2D

@export var speed = 200
var direction = Vector2(1, 0) 

func _ready():
	dark_cloud_grow()
func _process(delta):
	position += direction * speed * delta

func dark_cloud_grow():
	  # Create an AnimationPlayer node if it doesn't exist
	var anim_player = AnimationPlayer.new()
	add_child(anim_player)
	
	# Create a new animation
	var animation = Animation.new()
	var track_index = animation.add_track(Animation.TYPE_VALUE)
	
	# Set the track to target the scale property
	animation.track_set_path(track_index, ":scale")
	
	# Add keyframes (starting scale and ending scale)
	animation.track_insert_key(track_index, 0.0, Vector2(1, 1))  # Start with normal scale
	animation.track_insert_key(track_index, 2.0, Vector2(2, 2))  # End with double scale after 2 seconds
	
	# Add the animation to the player
	#anim_player.add_animation("scale_up", animation)
	
	# Play the animation
	anim_player.play("scale_up")
	
