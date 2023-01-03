extends Node2D

signal rolled(distance, currentStop)
signal bad_move_selected
signal home_chosen(home)
signal turn_finished(roads)
signal name_chosen(name)
signal wallet_changed(wallet)
signal destination_rolled(destination)
signal arrived_at_destination(player)

var currentStop
var adjList = Global.adjList
var home
var destination
var tripStart
var tripStartRegion
var wallet: float = 20.0
var ownedRoads = []
var visitedThisTrip = []


onready var tween: Tween = $Tween
# vars below need cleanup at end of each turn
var roadsThisTurn = []
var backwards

func _ready():
# warning-ignore:return_value_discarded
	connect('rolled', get_parent(), 'on_player_roll')
# warning-ignore:return_value_discarded
	connect("turn_finished", get_parent(), 'turn_finished')
# warning-ignore:return_value_discarded
	connect("arrived_at_destination", get_parent(), "player_arrived_at_destination")

func on_roll(distance):
	emit_signal('rolled', distance, currentStop)

func _initialized():
	currentStop = home
	tripStart = home
	position = currentStop.position
	print(home)
	emit_signal("name_chosen", name)
	emit_signal("wallet_changed", wallet)
	emit_signal("home_chosen", home.name)

func on_rdScreen_city_chosen(region, city, isHomeCityRoll = false):
	if isHomeCityRoll:
		tripStartRegion = region
		home = city
		return
	if region == tripStartRegion:
		print("nuh uh")
		# emit signal for custom region select
	destination = get_parent().convert_stop(city, TYPE_OBJECT)
	print(destination)
	emit_signal("destination_rolled", city)

func check_move_path_for_retracing(path: Array) -> bool:
	for desired_milepost in path:
		for previously_visited_milepost in visitedThisTrip:
			if desired_milepost == previously_visited_milepost:
				return true
	return false

func move(path: Array): # path is Nodes
	var x = 0
	if check_move_path_for_retracing(path):
		print('bad')
		emit_signal("bad_move_selected")
		return x
	for point in path:
		if point == destination:
			var stopInList = adjList[currentStop.name]
			currentStop = point
			get_roads_in_adj_list(stopInList, currentStop.name)
			arrived_at_destination()
			x = INF
		var stopInList = adjList[currentStop.name]
		visitedThisTrip.append(point)
		x += 1
		currentStop = point
		get_roads_in_adj_list(stopInList, currentStop.name)
# warning-ignore:return_value_discarded
	tween.interpolate_property(self, "global_position", global_position, currentStop.get_global_position(), 0.25, Tween.TRANS_SINE, Tween.EASE_IN)
# warning-ignore:return_value_discarded
	tween.start()
	return x

func arrived_at_destination():
	emit_signal("arrived_at_destination", self)
	tripStart = destination
	visitedThisTrip = []

func get_roads_in_adj_list(from_stop: Array, to_stop: String):
	print(from_stop)
	print(to_stop)
	for dict in from_stop:
		if dict.name == to_stop:
			roadsThisTurn.append(dict.roads)

func clean_up_turn():
	emit_signal("turn_finished")
	pay(calculate_turn_cost(1, roadsThisTurn))
	roadsThisTurn = []

func calculate_turn_cost(minCost, rtt):
	var addCost = false
	while rtt[0].empty():
		addCost = true
		rtt.remove(0)
	if addCost:
		minCost += 1
	print(rtt)
	print(minCost)
	while !rtt[0].empty():
		if search_for_cheapest_path(rtt[0][0], rtt):
			print(minCost)
			return minCost
	var outputCost = calculate_turn_cost(minCost, rtt)
	return outputCost


func search_for_cheapest_path(currentRoad: String, rtt: Array) -> bool:
	for arr in rtt:
		if arr.find(currentRoad) == -1:
			return false
		rtt[rtt.find(arr)].erase(currentRoad)
	return true

func pay(cost, _paidTo = -1): # paidTo should be used later
	wallet -= cost
	emit_signal("wallet_changed", wallet)

func railroad_purchased(railroad):
	railroad.owner = name
	pay(railroad.price)
	ownedRoads.append(railroad)
