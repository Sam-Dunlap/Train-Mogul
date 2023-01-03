extends CanvasLayer

signal city_chosen(region, city, name)

onready var messageLabel = $Panel/VBoxContainer/MessageLabel
onready var rdButton = $Panel/VBoxContainer/HBoxContainer/VBoxContainer/"Roll Destination"

func _ready():
	connect("tree_exiting", get_parent(), "resume_play")
	$HomeTimer.start()

func on_destination_button_pressed(region, city, home = false):
	emit_signal("city_chosen", region, city, home)
	match region:
		'NW':
			region = 'Northwest'
		'NE':
			region = 'Northeast'
		'PL':
			region = 'Plains'
		'NC':
			region = 'North Central'
		'SW':
			region = 'Southwest'
		'SC':
			region = 'South Central'
		'SE':
			region = 'Southeast'
	if home:
		messageLabel.text = "your home city is " + city + ", in the " + region + " region."
	else:
		messageLabel.text = "your destination city is " + city + ", in the " + region + " region."
		yield(get_tree().create_timer(1.5), "timeout")
		queue_free()


func _on_Timer_timeout():
	$HomeTimer.queue_free()
	messageLabel.text = "please roll for your destination."
	rdButton.disabled = false
