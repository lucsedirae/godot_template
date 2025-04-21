extends Control

@onready var main_menu = $".."
var main 

var ship_interior: Resource = preload("res://Scenes/Ships/Carrack/ship_interior_carrack.tscn")

# System.
func _process(_delta):
	if main_menu:
		main = main_menu.get_parent()

# Signal handling.
func _on_new_game_button_pressed():
	main.load_scene(ship_interior)
