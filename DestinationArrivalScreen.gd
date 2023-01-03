extends CanvasLayer

func _ready():
# warning-ignore:return_value_discarded
	connect("tree_exiting", get_parent(), "on_destination_arrival_screen_exiting")

func set_payout_label(payout):
	payout *= 1000
	var commaSeparatedPayout = comma_sep(payout)
	$Panel/VBoxContainer/PayoutLabel.text = str("Your payout is $",commaSeparatedPayout,".")

func set_congrats_message_label(destination):
	$Panel/VBoxContainer/CongratsMessageLabel.text = str("You have arrived at ", destination, "!")

func initiate_self_destruct():
	$KillSwitch.start()

func _on_KillSwitch_timeout():
	queue_free()

func comma_sep(number):
	var string = str(number)
	var mod = string.length() % 3
	var res = ""

	for i in range(0, string.length()):
		if i != 0 && i % 3 == mod:
			res += ","
		res += string[i]

	return res
