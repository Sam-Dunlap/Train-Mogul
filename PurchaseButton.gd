extends Button

onready var sceneRoot = get_parent().get_parent().get_parent()

func _ready():
	connect("mouse_entered", self, "entered")
	connect("mouse_exited", self, "exited")
	connect("button_down", sceneRoot, "purchase_button_pressed")

func entered():
	sceneRoot.get_node("Rows/Callsign").modulate = Color8(26, 175, 200, 255)
	sceneRoot.get_node("Rows/Name").modulate = Color8(26, 175, 200, 255)
	sceneRoot.get_node("Rows/Price").modulate = Color8(26, 175, 200, 255)

func exited():
	sceneRoot.get_node("Rows/Callsign").modulate = Color8(255, 255, 255)
	sceneRoot.get_node("Rows/Name").modulate = Color8(255, 255, 255)
	sceneRoot.get_node("Rows/Price").modulate = Color8(255, 255, 255)
