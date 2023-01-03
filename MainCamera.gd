extends Camera2D

signal purchase_confirmed(railroad)

var pan_allowed: bool = false
export var top_edge: int = 300
export var bottom_edge: int = 400
export var left_edge: int = 600
export var right_edge: int = 750

export var pan_factor = 10.0

export var pan_speed := 1.0
# Lower cap for the `_zoom_level`.
export var min_zoom := 0.25
# Upper cap for the `_zoom_level`.
export var max_zoom := 1
# Controls how much we increase or decrease the `_zoom_level` on every turn of the scroll wheel.
export var zoom_factor := 0.1
# Duration of the zoom's tween animation.
export var zoom_duration := 0.2

# The camera's target zoom level.
var zoom_level := 1.0 setget _set_zoom_level

# We store a reference to the scene's tween node.
onready var zTween: Tween = $ZoomTween
onready var lTween : Tween = $LineTween

func _ready():
	connect("purchase_confirmed", get_parent(), "railroad_purchased")
	var hud = load('res://HUD.tscn')
	var hudInstance = hud.instance()
	add_child(hudInstance)
	toggle_hud()

func toggle_hud():
	$HUD.visible = !$HUD.visible

func _process(delta):
	pan_speed = zoom_level * pan_factor
	if Input.is_action_pressed("ui_up"):
		_set_camera_position("up")
	if Input.is_action_pressed("ui_down"):
		_set_camera_position("down")
	if Input.is_action_pressed("ui_left"):
		_set_camera_position("left")
	if Input.is_action_pressed("ui_right"):
		_set_camera_position("right")

func _set_zoom_level(value: float) -> void:
	#limit the value between `min_zoom` and `max_zoom`
	zoom_level = clamp(value, min_zoom, max_zoom)
# warning-ignore:return_value_discarded
	if zoom_level == 1.0:
		top_edge = 300
		left_edge = 600
		right_edge = 700
		bottom_edge = 400
	if zoom_level < 1.0 && zoom_level > 0.5:
		top_edge = 200
		left_edge = 400
		right_edge = 850
		bottom_edge = 500
	if zoom_level < 0.5:
		top_edge = 100
		left_edge = 200
		right_edge = 1050
		bottom_edge = 600
	zTween.interpolate_property(
		self,
		"zoom",
		zoom,
		Vector2(zoom_level, zoom_level),
		zoom_duration,
		zTween.TRANS_SINE,
		zTween.EASE_OUT
	)
	zTween.start()

func _set_camera_position(value: String) -> void:
	if !pan_allowed:
		return
	match value:
		"up":
			if global_position.y > top_edge:
				global_position.y -= pan_speed
		"down":
			if global_position.y < bottom_edge:
				global_position.y += pan_speed
		"left":
			if global_position.x > left_edge:
				global_position.x -= pan_speed
		"right":
			if global_position.x < right_edge:
				global_position.x += pan_speed
	

func _unhandled_input(event):
	if event.is_action_pressed("camera_zoom_in"):
		_set_zoom_level(zoom_level - zoom_factor)
	if event.is_action_pressed("camera_zoom_out"):
		_set_zoom_level(zoom_level + zoom_factor)

func open_menu():
	toggle_hud()
	var roadMenu = load("PurchaseMenu.tscn").instance()
	add_child(roadMenu)

func railroad_selected(railroad: Dictionary):
	$PurchaseMenu.queue_free()
	var confirmDialog = load("ConfirmPurchaseWindow.tscn").instance()
	confirmDialog.set_details(railroad)
	add_child(confirmDialog)
	var chosenRailroad = get_tree().get_nodes_in_group(railroad.callsign)
	lTween.repeat = true
	for line in chosenRailroad:
		lTween.interpolate_property(line, "width", line.width, 10, 1.5)
		lTween.start()

func on_purchase_button_pressed(railroad: Dictionary, confirm: bool):
	$ConfirmPurchaseWindow.queue_free()
	lTween.remove_all()
	var purchasedRoad = get_tree().get_nodes_in_group(railroad.callsign)
	for line in purchasedRoad:
		line.width = 3
	if confirm:
		emit_signal("purchase_confirmed", railroad)
		add_destination_roll_screen()
		return
	var purchaseMenu = load("PurchaseMenu.tscn").instance()
	add_child(purchaseMenu)

func on_skip_button_pressed():
	$PurchaseMenu.queue_free()
	add_destination_roll_screen()

func run_arrival_protocol(payout, destination):
	toggle_hud()
	var destinationArrivalScreen = load("DestinationArrivalScreen.tscn").instance()
	destinationArrivalScreen.set_payout_label(payout)
	destinationArrivalScreen.set_congrats_message_label(destination)
	add_child(destinationArrivalScreen)
	destinationArrivalScreen.initiate_self_destruct()

func on_destination_arrival_screen_exiting():
	var purchaseMenu = load("PurchaseMenu.tscn").instance()
	add_child(purchaseMenu)

func resume_play():
	toggle_hud()
	print("peepee in maincamera.resume_play")

func add_destination_roll_screen():
	var rdScreen = load("RollDestinationScreen.tscn").instance()
	var board = get_parent()
	var player = board.players[board.whose_turn(board.turncount)]
	rdScreen.connect("city_chosen", player, "on_rdScreen_city_chosen")
	add_child(rdScreen)
