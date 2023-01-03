extends MarginContainer

func _ready():
	connect("mouse_entered", self, "entered")
	connect("mouse_exited", self, "exited")

func entered():
	get_parent().get_parent().get_parent().get_node("Rows/Callsign").modulate = Color8(26, 175, 200, 255)
	get_parent().get_parent().get_parent().get_node("Rows/Name").modulate = Color8(26, 175, 200, 255)
	get_parent().get_parent().get_parent().get_node("Rows/Price").modulate = Color8(26, 175, 200, 255)

func exited():
	get_parent().get_parent().get_parent().get_node("Rows/Callsign").modulate = Color8(255, 255, 255)
	get_parent().get_parent().get_parent().get_node("Rows/Name").modulate = Color8(255, 255, 255)
	get_parent().get_parent().get_parent().get_node("Rows/Price").modulate = Color8(255, 255, 255)
