extends CanvasLayer

var chosenRailroad: Dictionary

signal button_pressed(railroad, confirm)

func _ready():
	connect("button_pressed", get_parent(), "on_purchase_button_pressed")

func set_details(railroad: Dictionary):
	chosenRailroad = railroad
	$Panel/VBoxContainer/RailroadNameLabel.text = railroad.name
	$Panel/VBoxContainer/PriceLabel.text = str("-$",railroad.price,",000")


func _on_ConfirmButton_button_down():
	chosenRailroad.owned = true
	emit_signal("button_pressed", chosenRailroad, true)


func _on_RejectButton_button_down():
	emit_signal("button_pressed", chosenRailroad, false)
