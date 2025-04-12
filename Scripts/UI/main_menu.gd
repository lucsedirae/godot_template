# UI/main_menu.gd
extends Control

const SCENE_NAME = "main menu"

signal new_game_requested

# Functions
func get_scene_name():
	return SCENE_NAME

func request_new_game():
	new_game_requested.emit()
	print("Connections to request_new_game:")
	print(new_game_requested.get_connections())

# Signal handling
func _on_new_game_button_pressed():
	request_new_game()
