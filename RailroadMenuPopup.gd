extends Button

func _ready():
# warning-ignore:return_value_discarded
	connect("button_down", get_parent().get_parent(), "open_menu")
