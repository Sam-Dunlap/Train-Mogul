extends ItemList

func _ready():
	var roads = get_tree().get_nodes_in_group('Railroads')
	for rr in roads:
		add_item(rr.name)
		connect("item_selected", rr, "highlight")

func item_selected(i):
	pass
