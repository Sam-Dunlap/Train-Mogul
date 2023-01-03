extends Button

signal named(name)

func _ready():
	connect("button_down", self, 'get_name')

func get_name():
	var name = get_parent().get_node("GamerTag").text
	emit_signal('named', name)
