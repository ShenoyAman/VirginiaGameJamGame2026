extends Node2D

@onready var your_label = $FadeInLabel

var has_faded_in = false

func _ready():
	_fade_in()

func _fade_in():
	if has_faded_in:
		return
	has_faded_in = true
	modulate = Color(0, 0, 0, 0)
	your_label.modulate = Color(1, 1, 1, 1)  # keep label fully visible
	var tween = create_tween()
	tween.tween_property(self, "modulate", Color(1, 1, 1, 1), 5.0)
	tween.tween_callback(func(): your_label.visible = false)
