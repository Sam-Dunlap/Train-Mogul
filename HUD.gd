extends CanvasLayer

func _on_name_chosen(chosen_name):
	$PlayerLabel.text = str(chosen_name)

func _on_wallet_changed(wallet):
	$WalletLabel.text = "$" + comma_sep(wallet * 1000)

func _on_destination_rolled(destination):
	$DestinationLabel.text = "destination: " + destination

func _on_home_chosen(home):
	$HomeLabel.text = "home: " + home

func _on_player_roll(distance, _currentStop = null):
	$MoveLabel.text = str(distance)

func comma_sep(number):
	var string = str(number)
	var mod = string.length() % 3
	var res = ""

	for i in range(0, string.length()):
		if i != 0 && i % 3 == mod:
			res += ","
		res += string[i]

	return res
