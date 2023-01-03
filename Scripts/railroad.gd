extends Line2D

var stops;
var stopPositions = [];



func _ready():
	var nodeNameArr = name.split('-', false)
	var groupName = nodeNameArr[0]
	var firstStopName = nodeNameArr[1]
	var currentPoint
	stops = get_tree().get_nodes_in_group(groupName)
	for stop in stops:
		# get anchor point at one end of the rail segment
		if stop.name == firstStopName:
			currentPoint = stop
	
	while stopPositions.size() < stops.size():
		var nextPoint = stops[stops.size() - 1]
		stopPositions.append(currentPoint.position)
		for stop in stops:
			if stop.global_position.distance_to(currentPoint.position) < nextPoint.global_position.distance_to(currentPoint.position):
				if stopPositions.find(stop.position) == -1:
					if stop.global_position.distance_to(currentPoint.position) != 0:
						nextPoint = stop
		currentPoint = nextPoint
		
	# push it to Line2D points
	# get closest node (that hasn't been traversed) to that end in the group
	# push it to Line2D points, set it as the anchor
	# loop for all nodes in group
	set_points(stopPositions)

func highlight():
	set_width(5)


func _on_RailroadList_item_selected(index):
	set_width(5)
	print('im in railroad list signal')
