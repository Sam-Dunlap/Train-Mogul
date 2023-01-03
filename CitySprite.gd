extends TextureRect

onready var label = $"../CityLabel"

func _ready():
# warning-ignore:return_value_discarded
	connect("mouse_entered", self, "_on_mouse_entered")
# warning-ignore:return_value_discarded
	connect("mouse_exited", self, "_on_mouse_exited")

func _on_mouse_entered():
	label.show()
	
func _on_mouse_exited():
	label.hide()
