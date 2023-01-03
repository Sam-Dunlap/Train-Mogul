extends Panel

var playerNamesArray = []
signal playerNamesSubmitted(playerNamesArray)

func _ready():
	connect("playerNamesSubmitted", get_parent(), "on_start_menu_player_names_submitted")

func _on_Submit_pressed():
	for nameEntry in $VBoxContainer.get_children():
		playerNamesArray.append(nameEntry.playerName)
	emit_signal("playerNamesSubmitted", playerNamesArray)
	queue_free()

func add_gamer_tag_inputs(numPlayers):
	$VBoxContainer.add_gamer_tag_inputs(numPlayers)
