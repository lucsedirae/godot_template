# main.gd
extends Control

var main_menu: Resource = preload("res://Scenes/UI/main_menu.tscn")

var display_instance: Node

# System
func _ready():
	load_scene(main_menu)

# Functions
func load_scene(scene):
	# Clear previous instance.
	if display_instance != null:
		display_instance.queue_free()
	
	# Load new instance.
	display_instance = scene.instantiate()
	print("Loading scene: " + display_instance.get_scene_name())
	
	# Process instance.
	add_child(display_instance)
