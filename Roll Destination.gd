extends Button

signal dice_rolled(region, city, virtual)
onready var dbag = Dicebag.new()

onready var regionTable = Global.regionTable
onready var nwTable = Global.nwTable
onready var swTable = Global.swTable
onready var plTable = Global.plTable
onready var scTable = Global.scTable
onready var ncTable = Global.ncTable
onready var neTable = Global.neTable
onready var seTable = Global.seTable



func _ready():
	dbag.set_up_rng()
	dbag.table_create('region', regionTable)
	dbag.table_create('NW', nwTable)
	dbag.table_create('SW', swTable)
	dbag.table_create('PL', plTable)
	dbag.table_create('SC', scTable)
	dbag.table_create('NC', ncTable)
	dbag.table_create('NE', neTable)
	dbag.table_create('SE', seTable)
# warning-ignore:return_value_discarded
	connect("button_down", self, "roll")
# warning-ignore:return_value_discarded
	connect("dice_rolled", get_parent().get_parent().get_parent().get_parent().get_parent(), "on_destination_button_pressed")

func roll(virtual = false):
	var region = dbag.table_roll('region')
	var city = dbag.table_roll(region)
	emit_signal("dice_rolled", region, city, virtual)
	return city

