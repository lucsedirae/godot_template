# UI/menu_box.gd
extends VBoxContainer

@onready var boombox = $"../../UIBoombox"

# Duration of the fade-in animation in seconds
@export var fade_duration = 1.0

# Menu delay duration in seconds.
@export var wait_time: float = 4.0

var is_menu_visible: bool = false

func _ready():
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = wait_time
	timer.one_shot = true
	timer.connect("timeout", _fade_in_menu)
	timer.start()
	
	# Start completely transparent
	modulate.a = 0

func _fade_in_menu():
	# Create a Tween to animate the fade-in
	var tween = create_tween()
	tween.tween_property(self, "modulate:a", 1.0, fade_duration)
	tween.play()
