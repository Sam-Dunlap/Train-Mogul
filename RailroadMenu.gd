extends CanvasLayer

var railroadData = Global.railRoads
onready var card = load("Railroad Card.tscn")

func _ready():
	for road in railroadData:
		if road.owned:
			continue
		var cardInstance = card.instance()
		cardInstance._make_card(road)
		cardInstance.add_to_group("cards")
		$MenuContainer/RailroadCardContainer/RailroadCardBox.add_child(cardInstance)
	if get_tree().get_nodes_in_group("cards").empty():
		pass
