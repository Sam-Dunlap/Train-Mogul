extends MarginContainer

var labels
signal confirm_purchase(railroad)
var correspondingRoad

func _make_card(railroadData: Dictionary):
	correspondingRoad = railroadData
	name = railroadData.callsign
	$Rows/Callsign.text = str("(",railroadData.callsign,")")
	$Rows/Name.text = railroadData.name
	$Rows/Price.text = str("$", railroadData.price, ",000")
	var line = Line2D.new()
	for i in [$"Rows/0", $"Rows/1", $"Rows/2", $"Rows/3"]:
		line.add_point(i.position)
	line.set_default_color(ColorN(railroadData.color))
	line.width = 3
	add_child(line)

func _ready():
	var camera = get_parent().get_parent().get_parent().get_parent().get_parent()
# warning-ignore:return_value_discarded
	connect("mouse_entered", self, "entered")
# warning-ignore:return_value_discarded
	connect("mouse_exited", self, "exited")
	connect("confirm_purchase", camera, "railroad_selected")
	labels = [$Rows/Callsign, $Rows/Name, $Rows/Price]

func entered():
	for node in labels:
		node.modulate = Color8(26, 175, 200, 255)

func exited():
	for node in labels:
		node.modulate = Color8(255, 255, 255, 255)

func purchase_button_pressed():
	emit_signal("confirm_purchase", correspondingRoad)
