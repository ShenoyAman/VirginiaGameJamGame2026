extends Node2D

func _ready():
	_fade_to_red()

func _fade_to_red():
	var tween = create_tween()
	tween.tween_property(self, "modulate", Color(1, 0, 0, 1), 5.0)  # fade to red over 2 seconds
	tween.tween_callback(func(): get_tree().quit())
