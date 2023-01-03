extends Node2D

var adjList = Global.adjList
var rrArr = Global.railRoads
var graph
var waitingForMove = false
var enginePaths
var rollDistance
var players = []
var turncount = 0
var rollButton
var destinationButton

class BoardGraph:
	extends AStar2D
	
	func _compute_cost(_from_id, _to_id):
		return 1
	func _estimate_cost(_from_id, _to_id):
		return 1
	
	func make_graph(list , board : Node2D):
		var stops = list.keys()
		for milepost in stops:
			add_point(get_available_point_id(), board.get_node(milepost).position)
		for j in stops.size():
			for neighbor in list.get(stops[j]):
				var neighborIdx = stops.find(neighbor.name)
				if !are_points_connected(neighborIdx, j):
					connect_points(j, neighborIdx)

func _ready():
	for child in get_children():
		if child is Position2D:
			if child.get_children().size() == 3:
				child.add_to_group('stops')
	graph = BoardGraph.new()
	graph.make_graph(adjList, self)
	draw_roads()
	color_roads(rrArr)
	open_init_settings_menu()
#	open_start_menu()
	rollButton = $MainCamera/HUD/Roll

func open_init_settings_menu():
	var setupMenu = load("SetupSettingsMenu.tscn").instance()
	add_child(setupMenu)

func on_setup_menu_closing(playerCount):
	open_start_menu(playerCount)

# fires from ready, instances start menu, then fires add_player when user enters
# a gamer tag
func open_start_menu(playerCount):
	var startMenu = load("res://StartMenu.tscn").instance()
	startMenu.rect_min_size = get_viewport_rect().size
	startMenu.add_gamer_tag_inputs(playerCount)
	add_child(startMenu)

func on_start_menu_player_names_submitted(playerNamesArray):
	for name in playerNamesArray:
		initialize_player(name)
	clean_up_start()

# loads and instances player scene
func initialize_player(name):
	var player = load("res://Player.tscn").instance()
	players.append(player)
	player.name = name
	_connect_player_signals(player)
	determine_destination(player, true)
	rollButton.connect('rolled', player, 'on_roll')
	add_child(player)

func determine_destination(playerInstance, initializing = false):
	var rdScreen = load("res://RollDestinationScreen.tscn").instance()
	add_child(rdScreen)
	rdScreen.connect("city_chosen", playerInstance, "on_rdScreen_city_chosen")
	#var rdButton = rdScreen.rdButton
	if initializing:
		#var home = rdButton.roll(true)
		playerInstance.home = convert_stop("Portland OR", TYPE_OBJECT)

func _connect_player_signals(instance):
	instance.connect("tree_entered", instance, "_initialized")
	instance.connect("name_chosen", $MainCamera/HUD, "_on_name_chosen")
	instance.connect("wallet_changed", $MainCamera/HUD, "_on_wallet_changed")
	instance.connect("destination_rolled", $MainCamera/HUD, "_on_destination_rolled")
	instance.connect("rolled", $MainCamera/HUD, "_on_player_roll")
	instance.connect("home_chosen", $MainCamera/HUD, "_on_home_chosen")

func clean_up_start():
	$StartMenu.queue_free()
	$MainCamera.pan_allowed = true
	$MainCamera.toggle_hud()

func draw_roads():
	var roadsDrawn = []
	for a in adjList:
		for neighbor in adjList[a]:
			if not neighbor.name in roadsDrawn:
				for i in neighbor.roads.size():
					var rr = create_leg(a, neighbor.name, neighbor.roads[i])
					move_roads(rr, i)
					i += 1
				roadsDrawn.append(a)

func create_leg(a, b, road):
	var rr = Line2D.new()
	add_child(rr)
	rr.add_point(get_node(a).position)
	rr.add_point(get_node(b).position)
	rr.width = 3
	rr.z_index = -2
	rr.add_to_group(road)
	return rr

func move_roads(line, idx):
	var a = line.get_point_position(0)
	var b = line.get_point_position(1)
	var tangentVector = (b - a).tangent()
	var unitVector = tangentVector.normalized()
	if idx == 0:
		pass
	if idx == 1:
		a = a - (4 * unitVector)
		b = b - (4 * unitVector)
	if idx == 2:
		a = a + (4 * unitVector)
		b = b + (4 * unitVector)
	line.set_point_position(0, a)
	line.set_point_position(1, b)

func color_roads(arr):
	for rr in arr:
		var legs = get_tree().get_nodes_in_group(rr.callsign)
		for leg in legs:
			leg.set_default_color(ColorN(rr.color))

# fires from roll signal in player. grabs distance and player current stop, then
# disables roll button and fires make_engine_moves()
func on_player_roll(dist, currentStop):
	rollDistance = dist
	waitingForMove = true
	rollButton.disabled = true
	var currentIdx = convert_stop(currentStop, TYPE_INT)
	enginePaths = make_engine_moves(currentIdx)

# built in astar get_id_path to find shortest path from idx to all other
# points in the graph. removes index 0 of each path as that will always be
# the point that player is on.
func make_engine_moves(idx: int) -> Array:
	var engineMoves = []
	for i in graph.get_points().size():
		var path = graph.get_id_path(idx, i)
		engineMoves.append(path)
	var convertedMoves = []
	for arr in engineMoves:
		arr.remove(0)
		if arr.size() == 0:
			engineMoves.remove(engineMoves.find(arr))
		# PoolIntArray passes by value, converting to regular old array here
		var newArr = convert_pool_int_array_to_array(arr)
		if newArr.size() != 0:
			convertedMoves.append(newArr)
	return convertedMoves

func convert_pool_int_array_to_array(pool: PoolIntArray) -> Array:
	var newArr = []
	for integer in pool:
		newArr.append(integer)
	return newArr

func _input(event):
	if event is InputEventMouseMotion && players.size() > 0:
		var intStop = graph.get_closest_point(make_input_local(event).position)
		var path = graph.get_id_path(convert_stop(players[whose_turn(turncount)].currentStop, TYPE_INT), intStop)
		var obj_path = []
		for stop in path:
			obj_path.append(convert_stop(stop, TYPE_OBJECT))
		highlight_path(obj_path)
	if event is InputEventMouseButton:
		if event.is_action_pressed("primary_click"):
			var closestPoint = graph.get_closest_point(make_input_local(event).position)
			var closestStop = convert_stop(closestPoint, TYPE_OBJECT)
			if make_input_local(event).position.distance_to(closestStop.get_global_position()) < 30:
				if waitingForMove:
					var path = check_move_list(closestPoint, rollDistance)
					if path:
						move(path)
					else:
						print('fuck you')


# searches enginePaths, returns shortest path to selected point.
# needs more robust error boundaries
func check_move_list(point, x = INF):
	var movePath
	for path in enginePaths:
		if path[-1] == point:
			movePath = path
	if !movePath:
		print('fix this in check_move_list')
		return
	if movePath.size() <= x:
		return movePath

# converts index array to array of nodes, then feeds that to player.move().
# handles rollDistance tracking and fires player.clean_up_turn()
func move(path: Array):
	var movePath = [] # as Nodes
	for point in path:
		var nodePoint = convert_stop(point, TYPE_OBJECT)
		movePath.append(nodePoint)
	var remainder = players[whose_turn(turncount)].move(movePath)
	rollDistance -= remainder
	if rollDistance > 0:
		if remainder != 0:
			enginePaths = make_engine_moves(path[-1])
	else:
		players[whose_turn(turncount)].clean_up_turn()
	print(rollDistance)

func turn_finished():
	waitingForMove = false
	rollButton.disabled = false
	turncount += 1

func whose_turn(x):
	return x % players.size()

func player_arrived_at_destination(player):
	var tripStart = player.tripStart
	var destination = player.destination
	var payout = Global.calculate_payout(tripStart.name, destination.name)
	player.pay(payout * -1)
	$MainCamera.run_arrival_protocol(payout, destination.name)

func railroad_purchased(railroad: Dictionary):
	players[whose_turn(turncount)].railroad_purchased(railroad)

# turns off all highlights in 'stops' group, then highlights the input node.
func highlight_one(node: Node2D):
	for stop in get_tree().get_nodes_in_group('stops'):
		stop.get_node('Highlight').visible = false
	node.get_node('Highlight').visible = true

# same as highlight_one but takes an array of nodes
func highlight_path(moveList: Array):
	for stop in get_tree().get_nodes_in_group('stops'):
		stop.get_node('Highlight').visible = false
	for stop in moveList:
		stop.get_node('Highlight').visible = true

# Working with indices in the graph, strings as keys in the dictionary storing
# the adjacency list, and nodes in player and board.
# this util function takes any of those types and returns initValue as the outputType
# use type constant enums for outputType: TYPE_INT, TYPE_STRING, TYPE_OBJECT
# TODO: add functionality to convert arrays
func convert_stop(initValue, outputType: int):
	if typeof(initValue) == TYPE_INT:
		if outputType == TYPE_STRING:
			return adjList.keys()[initValue]
		if outputType == TYPE_OBJECT:
			return get_node(convert_stop(initValue, TYPE_STRING))
		else:
			print("I can't let you do that.")
			return
	if typeof(initValue) == TYPE_STRING:
		if outputType == TYPE_INT:
			return adjList.keys().find(initValue)
		if outputType == TYPE_OBJECT:
			return get_node(initValue)
		else:
			print("I can't let you do that.")
			return
	if typeof(initValue) == TYPE_OBJECT:
		if outputType == TYPE_INT:
			return adjList.keys().find(initValue.name)
		if outputType == TYPE_STRING:
			return initValue.name
		if outputType == TYPE_OBJECT:
			print("I can't let you do that.")
			return
	print("You have made some terrible mistake in convert_stop.")
