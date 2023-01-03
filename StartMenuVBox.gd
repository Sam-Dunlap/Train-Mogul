extends VBoxContainer


func add_gamer_tag_inputs(numPlayers):
	for i in range(numPlayers):
		var tag = load("TagInput.tscn").instance()
		tag.get_child(0).text = "Player " + str(i + 1) + ":"
		add_child(tag)
