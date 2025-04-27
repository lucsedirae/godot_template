# UI/main_menu.gd
extends Control

@onready var boombox = $BackgroundBoombox
const SCENE_NAME = "main menu"

# System
func _ready():
	boombox.play()

# Functions
func get_scene_name():
	return SCENE_NAME
