extends HBoxContainer

var playerName : String setget _set_playerName

func _set_playerName(new_text):
	playerName = new_text
	print(new_text)
