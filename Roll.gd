extends Button

signal rolled
var visited = []
var queue = []
onready var dicebag = Dicebag.new()

func _ready():
	connect("button_down", self, 'roll')
	
func roll():
	randomize()
	var dieOne = (randi() % 6 + 1)
	var dieTwo = (randi() % 6 + 1)
	var total = dieOne + dieTwo
	print(total)
	emit_signal("rolled", total)
