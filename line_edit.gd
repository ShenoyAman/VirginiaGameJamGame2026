extends LineEdit

const CORRECT_CODE = "451"  # change to your combination

func _ready():
	text_changed.connect(_on_text_changed)

func _on_text_changed(new_text: String):
	if new_text == CORRECT_CODE:
		visible = false
