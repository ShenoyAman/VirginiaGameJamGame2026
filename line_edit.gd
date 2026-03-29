extends LineEdit

const CORRECT_CODE = "451"

func _ready():
	text_changed.connect(_on_text_changed)
	if GameState.code_entered:
		visible = false

func _on_text_changed(new_text: String):
	if new_text == CORRECT_CODE:
		GameState.code_entered = true
		visible = false
