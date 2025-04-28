extends AudioStreamPlayer

@onready var hover_tone = load("res://Scenes/UI/Assets/Audio/ui_hover/ui_hover.ogg")



func play_hover_tone():
	stream = hover_tone
	play()

# Signal handling
func _on_new_game_button_mouse_entered():
	play_hover_tone()

func _on_load_game_button_mouse_entered():
	play_hover_tone()

func _on_options_button_mouse_entered():
	play_hover_tone()
