extends CanvasLayer

var railroadData = Global.railRoads
onready var card = load("Railroad Card.tscn")
onready var express = $MenuContainer/UpgradeContainer/Express
onready var superchief = $MenuContainer/UpgradeContainer/Superchief
onready var skip = $MenuContainer/UpgradeContainer/Skip

func _ready():
	skip.connect("pressed", get_parent(), "on_skip_button_pressed")
	for road in railroadData:
		if road.owned:
			continue
		var cardInstance = card.instance()
		cardInstance._make_card(road)
		cardInstance.add_to_group("cards")
		$MenuContainer/RailroadCardContainer/RailroadCardBox.add_child(cardInstance)
	if get_tree().get_nodes_in_group("cards").empty():
		# either: change RailroadCardContainer to a label, or remove it, add label as child
		print("nothin' here")
