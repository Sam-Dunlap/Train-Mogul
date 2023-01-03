extends CanvasLayer

var playerCount := 3 setget set_playerCount

signal exit_with_index(idx)

func _ready():
	connect("tree_exiting", self, "on_tree_exiting")
	connect("exit_with_index", get_parent(), "on_setup_menu_closing")

func on_tree_exiting():
	emit_signal("exit_with_index", playerCount)

func set_playerCount(index):
	playerCount = 3 + index
	print(playerCount)


func _on_Submit_pressed():
	queue_free()
