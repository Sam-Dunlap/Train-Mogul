extends Node

var neTable = [
	[7, 'Pittsburgh', true],
	[10, 'Philadelphia', true],
	[8, 'Washington DC', true],
	[4, 'Portland ME', true],
	[10, 'Boston', true],
	[14, 'New York', true],
	[9, 'Baltimore', true],
	[4, 'Albany', true],
	[6, 'Buffalo', true]
]
var seTable = [
	[6, 'Mobile', true],
	[7, 'Tampa', true],
	[3, 'Charlotte', true],
	[4, 'Charleston', true],
	[6, 'Knoxville', true],
	[15, 'Atlanta', true],
	[7, 'Norfolk', true],
	[3, 'Chattanooga', true],
	[5, 'Richmond', true],
	[6, 'Jacksonville', true],
	[10, 'Miami', true]
]
var ncTable = [
	[9, 'St Louis', true],
	[8, 'Cincinnati', true],
	[10, 'Cleveland', true],
	[5, 'Indianapolis', true],
	[11, 'Detroit', true],
	[16, 'Chicago', true],
	[8, 'Milwaukee', true],
	[5, 'Columbus', true]
]
var scTable = [
	[6, 'Fort Worth', true],
	[7, 'Louisville', true],
	[3, 'Shreveport', true],
	[4, 'Little Rock', true],
	[6, 'San Antonio', true],
	[8, 'Dallas', true],
	[9, 'New Orleans', true],
	[9, 'Houston', true],
	[7, 'Nashville', true],
	[7, 'Memphis', true],
	[6, 'Birmingham', true]
]
var plTable = [
	[7, 'Omaha', true],
	[8, 'Oklahoma City', true],
	[3, 'Fargo', true],
	[12, 'Denver', true],
	[5, 'Pueblo', true],
	[14, 'Minneapolis-St Paul', true],
	[18, 'Kansas City', true],
	[5, 'Des Moines', true]
]
var nwTable = [
	[9, 'Salt Lake City', true],
	[5, 'Billings', true],
	[4, 'Pocatello', true],
	[5, 'Spokane', true],
	[17, 'Portland OR', true],
	[18, 'Seattle', true],
	[5, 'Rapid City', true],
	[4, 'Casper', true],
	[5, 'Butte', true]
]
var swTable = [
	[7, 'San Diego', true],
	[17, 'Los Angeles', true],
	[3, 'Tucumcari', true],
	[5, 'Sacramento', true],
	[19, 'San Francisco-Oakland', true],
	[8, 'Phoenix', true],
	[3, 'Reno', true],
	[4, 'El Paso', true],
	[6, 'Las Vegas', true]
]
var regionTable = [
	[8, 'NW', true],
	[12, 'SW', true],
	[8, 'PL', true],
	[9, 'SC', true],
	[11, 'NC', true],
	[15, 'NE', true],
	[9, 'SE', true]
]

var adjList = {
	'Seattle'  : [{ 'name' : 'Seattle1' , 'roads' : ['GN'] }, 
				{ 'name' : 'Seattle3' , 'roads' : ['NP', 'CMSTPP'] },
				{ 'name' : 'Seattle6' , 'roads' : ['NP'] }],

	'Seattle1' : [{ 'name' : 'Seattle' , 'roads' : ['GN'] },
				{ 'name' : 'Seattle2' , 'roads' : ['GN'] }],

	'Seattle2' : [{ 'name' : 'Seattle1' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane' , 'roads' : ['GN'] }],

	'Seattle3' : [{ 'name' : 'Seattle' , 'roads' : ['NP', 'CMSTPP'] },
				{ 'name' : 'Seattle4' , 'roads' : ['CMSTPP'] },
				{ 'name' : 'Seattle5' , 'roads' : ['NP'] }],

	'Seattle4' : [{ 'name' : 'Seattle5' , 'roads' : ['NP'] },
				{ 'name' : 'Seattle3' , 'roads' : ['CMSTPP'] },
				{ 'name' : 'Spokane' , 'roads' : ['NP', 'CMSTPP'] }],

	'Seattle5' : [{ 'name' : 'Seattle3' , 'roads' : ['NP'] },
				{ 'name' : 'Seattle4' , 'roads' : ['NP'] }],

	'Seattle6' : [{ 'name' : 'Seattle' , 'roads' : ['NP'] },
				{ 'name' : 'Portland OR' , 'roads' : ['NP'] }],

	'Spokane' : [{ 'name' : 'Seattle2' , 'roads' : ['GN'] },
				{ 'name' : 'Seattle4' , 'roads' : ['NP', 'CMSTPP'] },
				{ 'name' : 'PortlandOR3' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane1' , 'roads' : ['GN', 'NP'] },
				{ 'name' : 'Spokane18' , 'roads' : ['CMSTPP'] }],

	'Spokane1' : [{ 'name' : 'Spokane' , 'roads' : ['GN', 'NP'] },
				{ 'name' : 'Spokane2' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane15' , 'roads' : ['NP'] }],

	'Spokane2' : [{ 'name' : 'Spokane1' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane3' , 'roads' : ['GN'] }],

	'Spokane3' : [{ 'name' : 'Spokane2' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane4' , 'roads' : ['GN'] }],

	'Spokane4' : [{ 'name' : 'Spokane3' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane5' , 'roads' : ['GN'] }],

	'Spokane5' : [{ 'name' : 'Spokane4' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane6' , 'roads' : ['GN'] },
				{ 'name' : 'Butte10' , 'roads' : ['GN'] }],

	'Spokane6' : [{ 'name' : 'Spokane5' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane7' , 'roads' : ['GN'] }],

	'Spokane7' : [{ 'name' : 'Spokane6' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane8' , 'roads' : ['GN'] }],

	'Spokane8' : [{ 'name' : 'Spokane7' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane9' , 'roads' : ['GN'] }],

	'Spokane9' : [{ 'name' : 'Spokane8' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane10' , 'roads' : ['GN'] }],

	'Spokane10' : [{ 'name' : 'Spokane9' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane11' , 'roads' : ['GN'] },
				{ 'name' : 'Billings3' , 'roads' : ['GN']}],

	'Spokane11' : [{ 'name' : 'Spokane10' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane12' , 'roads' : ['GN'] }],

	'Spokane12' : [{ 'name' : 'Spokane11' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane13' , 'roads' : ['GN'] }],

	'Spokane13' : [{ 'name' : 'Spokane12' , 'roads' : ['GN'] },
				{ 'name' : 'Spokane14' , 'roads' : ['GN'] }],

	'Spokane14' : [{ 'name' : 'Spokane13' , 'roads' : ['GN'] },
				{ 'name' : 'Fargo' , 'roads' : ['GN'] }],

	'Spokane15' : [{ 'name' : 'Spokane1' , 'roads' : ['NP'] },
				{ 'name' : 'Spokane16' , 'roads' : ['NP'] }],

	'Spokane16' : [{ 'name' : 'Spokane15' , 'roads' : ['NP'] },
				{ 'name' : 'Spokane17' , 'roads' : ['NP'] }],

	'Spokane17' : [{ 'name' : 'Spokane16' , 'roads' : ['NP'] },
				{ 'name' : 'Spokane19' , 'roads' : ['CMSTPP'] },
				{ 'name' : 'Butte' , 'roads' : ['NP', 'CMSTPP'] }],

	'Spokane18' : [{ 'name' : 'Spokane' , 'roads' : ['CMSTPP'] },
				{ 'name' : 'Spokane19' , 'roads' : ['CMSTPP'] }],

	'Spokane19' : [{ 'name' : 'Spokane18' , 'roads' : ['CMSTPP'] },
				{ 'name' : 'Spokane17' , 'roads' : ['CMSTPP'] }],

	'Portland OR' : [{ 'name' : 'Seattle6' , 'roads' : ['NP'] },
					{ 'name' : 'PortlandOR1' , 'roads' : ['GN', 'UP'] },
					{ 'name' : 'PortlandOR10' , 'roads' : ['SP'] }],

	'PortlandOR1' : [{ 'name' : 'Portland OR' , 'roads' : ['GN', 'UP'] },
					{ 'name' : 'PortlandOR2' , 'roads' : ['GN', 'UP'] },
					{ 'name' : 'PortlandOR17', 'roads' : ['GN']}],

	'PortlandOR2' : [{ 'name' : 'PortlandOR1' , 'roads' : ['GN', 'UP'] },
					{ 'name' : 'PortlandOR3' , 'roads' : ['GN'] },
					{ 'name' : 'PortlandOR4' , 'roads' : ['UP'] }],

	'PortlandOR3' : [{ 'name' : 'PortlandOR2' , 'roads' : ['GN'] },
					{ 'name' : 'Spokane' , 'roads' : ['GN'] }],

	'PortlandOR4' : [{ 'name' : 'PortlandOR2' , 'roads' : ['UP'] },
					{ 'name' : 'PortlandOR5' , 'roads' : ['UP'] }],

	'PortlandOR5' : [{ 'name' : 'PortlandOR4' , 'roads' : ['UP'] },
					{ 'name' : 'PortlandOR6' , 'roads' : ['UP'] }],

	'PortlandOR6' : [{ 'name' : 'PortlandOR5' , 'roads' : ['UP'] },
					{ 'name' : 'PortlandOR7' , 'roads' : ['UP'] }],

	'PortlandOR7' : [{ 'name' : 'PortlandOR6' , 'roads' : ['UP'] },
					{ 'name' : 'PortlandOR8' , 'roads' : ['UP'] }],

	'PortlandOR8' : [{ 'name' : 'PortlandOR7' , 'roads' : ['UP'] },
					{ 'name' : 'PortlandOR9' , 'roads' : ['UP'] }],

	'PortlandOR9' : [{ 'name' : 'PortlandOR8' , 'roads' : ['UP'] },
					{ 'name' : 'Pocatello' , 'roads' : ['UP'] }],

	'PortlandOR10' : [{ 'name' : 'Portland OR' , 'roads' : ['SP'] },
					{ 'name' : 'PortlandOR11' , 'roads' : ['SP'] }],

	'PortlandOR11' : [{ 'name' : 'PortlandOR10' , 'roads' : ['SP'] },
					{ 'name' : 'PortlandOR12' , 'roads' : ['SP'] }],

	'PortlandOR12' : [{ 'name' : 'PortlandOR11' , 'roads' : ['SP'] },
					{ 'name' : 'PortlandOR13' , 'roads' : ['SP'] }],

	'PortlandOR13' : [{ 'name' : 'PortlandOR12' , 'roads' : ['SP'] },
					{ 'name' : 'PortlandOR14' , 'roads' : ['SP'] }],

	'PortlandOR14' : [{ 'name' : 'PortlandOR13' , 'roads' : ['SP'] },
					{ 'name' : 'PortlandOR15' , 'roads' : ['SP'] }],

	'PortlandOR15' : [{ 'name' : 'PortlandOR14' , 'roads' : ['SP'] },
					{ 'name' : 'PortlandOR16' , 'roads' : ['SP'] },
					{ 'name' : 'Sacramento' , 'roads' : ['SP']}],

	'PortlandOR16' : [{ 'name' : 'PortlandOR15' , 'roads' : ['SP'] },
					{ 'name' : 'Sacramento' , 'roads' : ['SP'] },
					{ 'name' : 'San Francisco-Oakland' , 'roads' : ['SP'] }],

	'PortlandOR17' : [{ 'name' : 'PortlandOR1' , 'roads' : ['GN'] },
					{ 'name' : 'PortlandOR18' , 'roads' : ['GN'] }],

	'PortlandOR18' : [{ 'name' : 'PortlandOR17' , 'roads' : ['GN'] },
					{ 'name' : 'PortlandOR19' , 'roads' : ['GN'] }],

	'PortlandOR19' : [{ 'name' : 'PortlandOR18' , 'roads' : ['GN'] },
					{ 'name' : 'PortlandOR20' , 'roads' : ['GN'] }],

	'PortlandOR20' : [{ 'name' : 'PortlandOR19' , 'roads' : ['GN'] },
					{ 'name' : 'PortlandOR21' , 'roads' : ['WP'] }],

	'PortlandOR21' : [{ 'name' : 'PortlandOR20' , 'roads' : ['WP'] },
					{ 'name' : 'Sacramento1' , 'roads' : ['WP'] },
					{ 'name' : 'Reno1' , 'roads' : ['WP']}],

	'Butte' : [{ 'name' : 'Butte1' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Butte4' , 'roads' : ['NP'] },
			{ 'name' : 'Butte6' , 'roads' : ['UP'] },
			{ 'name' : 'Butte9' , 'roads' : ['GN'] },
			{ 'name' : 'Spokane17' , 'roads' : ['NP', 'CMSTPP'] }],

	'Butte1' : [{ 'name' : 'Butte' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Butte2' , 'roads' : ['CMSTPP'] }],

	'Butte2' : [{ 'name' : 'Butte1' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Butte3' , 'roads' : ['CMSTPP'] }],

	'Butte3' : [{ 'name' : 'Butte2' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings1' , 'roads' : ['CMSTPP'] }],

	'Butte4' : [{ 'name' : 'Butte' , 'roads' : ['NP'] },
			{ 'name' : 'Butte5' , 'roads' : ['NP'] }],

	'Butte5' : [{ 'name' : 'Butte4' , 'roads' : ['NP'] },
			{ 'name' : 'Billings' , 'roads' : ['NP'] }],

	'Butte6' : [{ 'name' : 'Butte' , 'roads' : ['UP'] },
			{ 'name' : 'Butte7' , 'roads' : ['UP'] }],

	'Butte7' : [{ 'name' : 'Butte6' , 'roads' : ['UP'] },
			{ 'name' : 'Butte8' , 'roads' : ['UP'] }],

	'Butte8' : [{ 'name' : 'Butte7' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello' , 'roads' : ['UP'] }],

	'Butte9' : [{ 'name' : 'Butte' , 'roads' : ['GN'] },
			{ 'name' : 'Butte10' , 'roads' : ['GN'] }],

	'Butte10' : [{ 'name' : 'Butte9' , 'roads' : ['GN'] },
			{ 'name' : 'Spokane5' , 'roads' : ['GN'] }],

	'Billings' : [{ 'name' : 'Billings1' , 'roads' : ['NP'] },
			{ 'name' : 'Billings16' , 'roads' : ['CBQ'] },
			{ 'name' : 'Butte5' , 'roads' : ['NP'] }],

	'Billings1' : [{ 'name' : 'Billings' , 'roads' : ['NP'] },
			{ 'name' : 'Billings2' , 'roads' : ['NP', 'CMSTPP'] },
			{ 'name' : 'Butte3' , 'roads' : ['CMSTPP'] }],

	'Billings2' : [{ 'name' : 'Billings1' , 'roads' : ['NP', 'CMSTPP'] },
			{ 'name' : 'Billings3' , 'roads' : ['NP'] },
			{ 'name' : 'Billings4' , 'roads' : ['NP'] },
			{ 'name' : 'Billings9' , 'roads' : ['CMSTPP'] }],

	'Billings3' : [{ 'name' : 'Billings2' , 'roads' : ['NP'] },
			{ 'name' : 'Billings4' , 'roads' : ['NP'] },
			{ 'name' : 'Spokane10' , 'roads' : ['GN'] }],

	'Billings4' : [{ 'name' : 'Billings2' , 'roads' : ['NP'] },
			{ 'name' : 'Billings3' , 'roads' : ['NP'] },
			{ 'name' : 'Billings5' , 'roads' : ['NP'] }],

	'Billings5' : [{ 'name' : 'Billings4' , 'roads' : ['NP'] },
			{ 'name' : 'Billings6' , 'roads' : ['NP'] }],

	'Billings6' : [{ 'name' : 'Billings5' , 'roads' : ['NP'] },
			{ 'name' : 'Billings7' , 'roads' : ['NP'] }],

	'Billings7' : [{ 'name' : 'Billings6' , 'roads' : ['NP'] },
			{ 'name' : 'Billings8' , 'roads' : ['NP'] }],

	'Billings8' : [{ 'name' : 'Billings7' , 'roads' : ['NP'] },
			{ 'name' : 'Fargo' , 'roads' : ['NP'] }],

	'Billings9' : [{ 'name' : 'Billings2' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings10' , 'roads' : ['CMSTPP'] }],

	'Billings10' : [{ 'name' : 'Billings9' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings11' , 'roads' : ['CMSTPP'] }],

	'Billings11' : [{ 'name' : 'Billings10' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings12' , 'roads' : ['CMSTPP'] }],

	'Billings12' : [{ 'name' : 'Billings11' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings13' , 'roads' : ['CMSTPP'] }],

	'Billings13' : [{ 'name' : 'Billings12' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings14' , 'roads' : ['CMSTPP'] }],

	'Billings14' : [{ 'name' : 'Billings13' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Billings15' , 'roads' : ['CMSTPP'] }],

	'Billings15' : [{ 'name' : 'Billings14' , 'roads' : ['CMSTPP'] },
			{ 'name' : 'Minneapolis-St Paul' , 'roads' : ['CMSTPP'] }],

	'Billings16' : [{ 'name' : 'Billings' , 'roads' : ['CBQ'] },
			{ 'name' : 'Billings17' , 'roads' : ['CBQ'] }],

	'Billings17' : [{ 'name' : 'Billings16' , 'roads' : ['CBQ'] },
			{ 'name' : 'Billings18' , 'roads' : ['CBQ'] }],

	'Billings18' : [{ 'name' : 'Billings17' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper' , 'roads' : ['CBQ'] }],

	'Pocatello' : [{ 'name' : 'Pocatello1' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello3' , 'roads' : ['UP'] },
			{ 'name' : 'PortlandOR9' , 'roads' : ['UP'] },
			{ 'name' : 'Butte8' , 'roads' : ['UP'] }],

	'Pocatello1' : [{ 'name' : 'Pocatello' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello2' , 'roads' : ['UP'] }],

	'Pocatello2' : [{ 'name' : 'Pocatello1' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello4' , 'roads' : ['UP'] },
			{ 'name' : 'Salt Lake City' , 'roads' : ['UP', 'DRGW'] },
			{ 'name' : 'Reno6' , 'roads' : ['SP'] }],

	'Pocatello3' : [{ 'name' : 'Pocatello' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello5' , 'roads' : ['UP'] }],

	'Pocatello4' : [{ 'name' : 'Pocatello2' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello5' , 'roads' : ['UP'] }],

	'Pocatello5' : [{ 'name' : 'Pocatello3' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello4' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello6' , 'roads' : ['UP'] }],

	'Pocatello6' : [{ 'name' : 'Pocatello5' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello7' , 'roads' : ['UP'] }],

	'Pocatello7' : [{ 'name' : 'Pocatello6' , 'roads' : ['UP'] },
			{ 'name' : 'Pocatello8' , 'roads' : ['UP'] }],

	'Pocatello8' : [{ 'name' : 'Pocatello7' , 'roads' : ['UP'] },
			{ 'name' : 'Casper13' , 'roads' : ['UP'] }],

	'Salt Lake City' : [{ 'name' : 'Pocatello2' , 'roads' : ['UP', 'DRGW'] },
			{ 'name' : 'Salt Lake City1' , 'roads' : ['DRGW'] },
			{'name' : 'Reno7' , 'roads' : ['WP']},
			{'name' : 'Las Vegas4' , 'roads' : ['UP']}],

	'Salt Lake City1' : [{ 'name' : 'Salt Lake City' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City2' , 'roads' : ['DRGW'] }],

	'Salt Lake City2' : [{ 'name' : 'Salt Lake City1' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City3' , 'roads' : ['DRGW'] }],

	'Salt Lake City3' : [{ 'name' : 'Salt Lake City2' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City4' , 'roads' : ['DRGW'] }],

	'Salt Lake City4' : [{ 'name' : 'Salt Lake City3' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City5' , 'roads' : ['DRGW'] }],

	'Salt Lake City5' : [{ 'name' : 'Salt Lake City4' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City6' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City7', 'roads' : ['DRGW']}],

	'Salt Lake City6' : [{ 'name' : 'Salt Lake City5' , 'roads' : ['DRGW'] },
			{ 'name' : 'Denver' , 'roads' : ['DRGW'] }],

	'Salt Lake City7' : [{ 'name' : 'Salt Lake City5' , 'roads' : ['DRGW'] },
			{ 'name' : 'Salt Lake City8' , 'roads' : ['DRGW'] }],

	'Salt Lake City8' : [{ 'name' : 'Salt Lake City7' , 'roads' : ['DRGW'] },
			{ 'name' : 'Pueblo' , 'roads' : ['DRGW'] }],

	'Rapid City' : [{ 'name' : 'Rapid City1' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City7' , 'roads' : ['CNW'] }],

	'Rapid City1' : [{ 'name' : 'Rapid City' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City2' , 'roads' : ['CNW'] }],

	'Rapid City2' : [{ 'name' : 'Rapid City1' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City3' , 'roads' : ['CNW'] }],

	'Rapid City3' : [{ 'name' : 'Rapid City2' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City4' , 'roads' : ['CNW'] }],

	'Rapid City4' : [{ 'name' : 'Rapid City3' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City5' , 'roads' : ['CNW'] }],

	'Rapid City5' : [{ 'name' : 'Rapid City4' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City6' , 'roads' : ['CNW'] }],

	'Rapid City6' : [{ 'name' : 'Rapid City5' , 'roads' : ['CNW'] },
			{'name' : 'Omaha2' , 'roads' : ['CNW']},
			{ 'name' : 'Minneapolis-St Paul' , 'roads' : ['CNW'] }],

	'Rapid City7' : [{ 'name' : 'Rapid City' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper2' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper3' , 'roads' : ['CNW']}],

	'Casper' : [{ 'name' : 'Billings18' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper1' , 'roads' : ['CBQ', 'CNW'] }],

	'Casper1' : [{ 'name' : 'Casper' , 'roads' : ['CBQ', 'CNW'] },
			{ 'name' : 'Casper2' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper7' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper12' , 'roads' : ['CBQ'] }],

	'Casper2' : [{ 'name' : 'Casper1' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper3' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper7' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper8' , 'roads' : ['CBQ'] },
			{ 'name' : 'Rapid City7' , 'roads' : ['CNW'] }],

	'Casper3' : [{ 'name' : 'Casper2' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper4' , 'roads' : ['CNW'] },
			{ 'name' : 'Rapid City7' , 'roads' : ['CNW'] }],

	'Casper4' : [{ 'name' : 'Casper3' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper5' , 'roads' : ['CNW'] }],

	'Casper5' : [{ 'name' : 'Casper4' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper6' , 'roads' : ['CNW'] }],

	'Casper6' : [{ 'name' : 'Casper5' , 'roads' : ['CNW'] },
			{ 'name' : 'Omaha' , 'roads' : ['CNW'] }],

	'Casper7' : [{ 'name' : 'Casper1' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper2' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper8' , 'roads' : ['CBQ'] }],

	'Casper8' : [{ 'name' : 'Casper2' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper7' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper9' , 'roads' : ['CBQ'] }],

	'Casper9' : [{ 'name' : 'Casper8' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper10' , 'roads' : ['CBQ'] }],

	'Casper10' : [{ 'name' : 'Casper9' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper11' , 'roads' : ['CBQ'] }],

	'Casper11' : [{ 'name' : 'Casper10' , 'roads' : ['CBQ'] },
			{ 'name' : 'Omaha' , 'roads' : ['CBQ', 'CRIP'] },
			{ 'name' : 'Casper19', 'roads' : ['CBQ', 'CRIP']}],

	'Casper12' : [{ 'name' : 'Casper1' , 'roads' : ['CBQ'] },
			{ 'name' : 'Casper13' , 'roads' : ['CBQ'] }],

	'Casper13' : [{ 'name' : 'Casper12' , 'roads' : ['CBQ'] },
			{'name' : 'Casper14' , 'roads' : ['UP']},
			{ 'name' : 'Denver' , 'roads' : ['CBQ'] },
			{ 'name' : 'Pocatello8' , 'roads' : ['UP']}],

	'Casper14' : [{'name' : 'Casper13', 'roads' : ['UP']},
			{'name' : 'Casper15', 'roads' : ['UP']}],

	'Casper15' : [{'name' : 'Casper14', 'roads' : ['UP']},
			{'name' : 'Casper16', 'roads' : ['UP']}],

	'Casper16' : [{'name' : 'Casper15', 'roads' : ['UP']},
			{'name' : 'Casper17', 'roads' : ['UP']}],

	'Casper17' : [{'name' : 'Casper16', 'roads' : ['UP']},
			{'name' : 'Casper18', 'roads' : ['UP']},
			{'name' : 'Casper19', 'roads' : ['UP']}],

	'Casper18' : [{'name' : 'Casper17', 'roads' : ['UP']},
			{'name' : 'Omaha', 'roads' : ['UP']}],

	'Casper19' : [{'name' : 'Casper17', 'roads' : ['UP']},
			{'name' : 'Casper20', 'roads' : ['UP']},
			{'name' : 'Casper11', 'roads' : ['CBQ', 'CRIP']},
			{'name' : 'Denver5', 'roads' : ['CBQ']},
			{'name' : 'Denver11' , 'roads' : ['CRIP']}],

	'Casper20' : [{'name' : 'Casper19', 'roads' : ['UP']},
			{'name' : 'Casper21', 'roads' : ['UP']}],

	'Casper21' : [{'name' : 'Casper20', 'roads' : ['UP']},
			{'name' : 'Kansas City', 'roads' : ['UP', 'CRIP']},
			{'name' : 'Denver12' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari7' , 'roads' : ['CRIP']}],

		# SOUTHWEST

	'Reno' : [{'name' : 'Reno1' , 'roads' : ['WP']},
			{'name' : 'Reno3' , 'roads' : ['SP']},
			{'name' : 'Sacramento2' , 'roads' : ['SP']}],

	'Reno1' : [{'name' : 'Reno' , 'roads' : ['WP']},
			{'name' : 'Reno2' , 'roads' : ['WP']},
			{'name' : 'Sacramento1' , 'roads' : ['WP']}],

	'Reno2' : [{'name' : 'Reno1' , 'roads' : ['WP']},
			{'name' : 'Reno4' , 'roads' : ['WP']}],

	'Reno3' : [{'name' : 'Reno' , 'roads' : ['SP']},
			{'name' : 'Reno4' , 'roads' : ['SP']}],

	'Reno4' : [{'name' : 'Reno2' , 'roads' : ['WP']},
			{'name' : 'Reno3' , 'roads' : ['SP']},
			{'name' : 'Reno5' , 'roads' : ['WP', 'SP']}],

	'Reno5' : [{'name' : 'Reno4' , 'roads' : ['WP', 'SP']},
			{'name' : 'Reno6' , 'roads' : ['SP']},
			{'name' : 'Reno7' , 'roads' : ['WP']}],

	'Reno6' : [{'name' : 'Reno5' , 'roads' : ['SP']},
			{'name' : 'Pocatello2' , 'roads' : ['SP']}],

	'Reno7' : [{'name' : 'Reno5' , 'roads' : ['WP']},
			{'name' : 'Salt Lake City' , 'roads' : ['WP']}],

	'Sacramento' : [{ 'name' : 'PortlandOR15' , 'roads' : ['SP'] },
			{ 'name' : 'PortlandOR16' , 'roads' : ['SP'] }],

	'Sacramento1' : [{'name' : 'Sacramento' , 'roads' : ['WP']},
			{'name' : 'PortlandOR21' , 'roads' : ['WP']}],

	'Sacramento2' : [{'name' : 'Sacramento' , 'roads' : ['SP']},
			{'name' : 'Reno' , 'roads' : ['SP']}],

	'San Francisco-Oakland' : [{ 'name' : 'PortlandOR16' , 'roads' : ['SP'] },
			{'name' : 'San Francisco-Oakland1', 'roads' : ['WP', 'ATSF']},
			{'name' : 'San Francisco-Oakland5', 'roads' : ['SP']}],

	'San Francisco-Oakland1' : [{ 'name' : 'San Francisco-Oakland' , 'roads' : ['WP', 'ATSF'] },
			{'name' : 'San Francisco-Oakland2', 'roads' : ['ATSF']},
			{'name' : 'Sacramento', 'roads' : ['WP']}],

	'San Francisco-Oakland2' : [{ 'name' : 'San Francisco-Oakland1' , 'roads' : ['ATSF']},
			{'name' : 'San Francisco-Oakland3', 'roads' : ['ATSF']}],

	'San Francisco-Oakland3' : [{ 'name' : 'San Francisco-Oakland2' , 'roads' : ['ATSF']},
			{'name' : 'San Francisco-Oakland4', 'roads' : ['ATSF']}],

	'San Francisco-Oakland4' : [{ 'name' : 'San Francisco-Oakland3' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles2', 'roads' : ['ATSF']}],

	'San Francisco-Oakland5' : [{ 'name' : 'San Francisco-Oakland' , 'roads' : ['SP']},
			{'name' : 'San Francisco-Oakland6', 'roads' : ['SP']}],

	'San Francisco-Oakland6' : [{ 'name' : 'San Francisco-Oakland5' , 'roads' : ['SP']},
			{'name' : 'San Francisco-Oakland7', 'roads' : ['SP']}],

	'San Francisco-Oakland7' : [{ 'name' : 'San Francisco-Oakland6' , 'roads' : ['SP']},
			{'name' : 'San Francisco-Oakland8', 'roads' : ['SP']}],

	'San Francisco-Oakland8' : [{ 'name' : 'San Francisco-Oakland7' , 'roads' : ['SP']},
			{'name' : 'San Francisco-Oakland9', 'roads' : ['SP']}],

	'San Francisco-Oakland9' : [{ 'name' : 'San Francisco-Oakland8' , 'roads' : ['SP']},
			{'name' : 'Los Angeles', 'roads' : ['SP']}],

	'Las Vegas' : [{'name' : 'Las Vegas1' , 'roads' : ['UP']},
			{'name' : 'Los Angeles3' , 'roads' : ['UP']}],

	'Las Vegas1' : [{'name' : 'Las Vegas' , 'roads' : ['UP']},
			{'name' : 'Las Vegas2' , 'roads' : ['UP']}],

	'Las Vegas2' : [{'name' : 'Las Vegas1' , 'roads' : ['UP']},
			{'name' : 'Las Vegas3' , 'roads' : ['UP']}],

	'Las Vegas3' : [{'name' : 'Las Vegas2' , 'roads' : ['UP']},
			{'name' : 'Las Vegas4' , 'roads' : ['UP']}],

	'Las Vegas4' : [{'name' : 'Las Vegas3' , 'roads' : ['UP']},
			{'name' : 'Salt Lake City' , 'roads' : ['UP']}],

	'Los Angeles' : [{'name' : 'Los Angeles1' , 'roads' : ['UP', 'ATSF', 'SP']},
			{'name' : 'Los Angeles17', 'roads' : ['ATSF']},
			{'name' : 'San Francisco-Oakland9', 'roads' : ['SP']}],

	'Los Angeles1' : [{'name' : 'Los Angeles' , 'roads' : ['UP', 'ATSF', 'SP']},
			{'name' : 'Los Angeles2' , 'roads' : ['UP', 'ATSF']},
			{'name' : 'Los Angeles18' , 'roads' : ['SP']}],

	'Los Angeles2' : [{'name' : 'Los Angeles1' , 'roads' : ['SP', 'ATSF']},
			{'name' : 'Los Angeles3' , 'roads' : ['UP']},
			{'name' : 'Los Angeles4' , 'roads' : ['ATSF']},
			{'name' : 'San Francisco-Oakland4', 'roads' : ['ATSF']}],

	'Los Angeles3' : [{'name' : 'Los Angeles2' , 'roads' : ['UP']},
			{'name' : 'Las Vegas' , 'roads' : ['UP']}],

	'Los Angeles4' : [{'name' : 'Los Angeles2' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles5' , 'roads' : ['ATSF']}],

	'Los Angeles5' : [{'name' : 'Los Angeles4' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles6' , 'roads' : ['ATSF']}],

	'Los Angeles6' : [{'name' : 'Los Angeles5' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles7' , 'roads' : ['ATSF']}],

	'Los Angeles7' : [{'name' : 'Los Angeles6' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles8' , 'roads' : ['ATSF']},
			{'name' : 'Phoenix1' , 'roads' : ['ATSF']}],

	'Los Angeles8' : [{'name' : 'Los Angeles7' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles9' , 'roads' : ['ATSF']}],

	'Los Angeles9' : [{'name' : 'Los Angeles8' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles10' , 'roads' : ['ATSF']}],

	'Los Angeles10' : [{'name' : 'Los Angeles9' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles11' , 'roads' : ['ATSF']}],

	'Los Angeles11' : [{'name' : 'Los Angeles10' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles12' , 'roads' : ['ATSF']}],

	'Los Angeles12' : [{'name' : 'Los Angeles11' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles13' , 'roads' : ['ATSF']},
			{'name' : 'El Paso2' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo12' , 'roads' : ['ATSF']}],

	'Los Angeles13' : [{'name' : 'Los Angeles12' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles14' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari' , 'roads' : ['SP']},
			{'name' : 'El Paso4' , 'roads' : ['SP']}],

	'Los Angeles14' : [{'name' : 'Los Angeles13' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles15' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari9' , 'roads' : ['ATSF']}],

	'Los Angeles15' : [{'name' : 'Los Angeles14' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles16' , 'roads' : ['ATSF']}],

	'Los Angeles16' : [{'name' : 'Los Angeles15' , 'roads' : ['ATSF']},
			{'name' : 'El Paso8' , 'roads' : ['ATSF']}],

	'Los Angeles17' : [{'name' : 'Los Angeles' , 'roads' : ['ATSF']},
			{'name' : 'San Diego' , 'roads' : ['ATSF']}],

	'Los Angeles18' : [{'name' : 'Los Angeles1' , 'roads' : ['SP']},
			{'name' : 'Los Angeles19' , 'roads' : ['SP']}],

	'Los Angeles19' : [{'name' : 'Los Angeles18' , 'roads' : ['SP']},
			{'name' : 'Los Angeles20' , 'roads' : ['SP']}],

	'Los Angeles20' : [{'name' : 'Los Angeles19' , 'roads' : ['SP']},
			{'name' : 'Phoenix' , 'roads' : ['SP']}],

	'San Diego' : [{'name' : 'Los Angeles17' , 'roads' : ['ATSF']}],

	'Phoenix' : [{'name' : 'Phoenix1' , 'roads' : ['ATSF']},
			{'name' : 'Phoenix2' , 'roads' : ['SP']},
			{'name' : 'Los Angeles20' , 'roads' : ['SP']}],

	'Phoenix1' : [{'name' : 'Phoenix' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles7' , 'roads' : ['ATSF']}],

	'Phoenix2' : [{'name' : 'Phoenix' , 'roads' : ['SP']},
			{'name' : 'Phoenix3' , 'roads' : ['SP']}],

	'Phoenix3' : [{'name' : 'Phoenix2' , 'roads' : ['SP']},
			{'name' : 'Phoenix4' , 'roads' : ['SP']}],

	'Phoenix4' : [{'name' : 'Phoenix3' , 'roads' : ['SP']},
			{'name' : 'Phoenix5' , 'roads' : ['SP']}],

	'Phoenix5' : [{'name' : 'Phoenix4' , 'roads' : ['SP']},
			{'name' : 'El Paso' , 'roads' : ['SP']}],

	'El Paso' : [{'name' : 'El Paso1' , 'roads' : ['ATSF']},
			{'name' : 'El Paso3' , 'roads' : ['SP']},
			{'name' : 'El Paso5' , 'roads' : ['SP', 'TP']}],

	'El Paso1' : [{'name' : 'El Paso' , 'roads' : ['ATSF']},
			{'name' : 'El Paso2' , 'roads' : ['ATSF']}],

	'El Paso2' : [{'name' : 'El Paso1' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles12' , 'roads' : ['ATSF']}],

	'El Paso3' : [{'name' : 'El Paso' , 'roads' : ['SP']},
			{'name' : 'El Paso4' , 'roads' : ['SP']}],

	'El Paso4' : [{'name' : 'El Paso3' , 'roads' : ['SP']},
			{'name' : 'Los Angeles13' , 'roads' : ['SP']}],

	'El Paso5' : [{'name' : 'El Paso' , 'roads' : ['SP', 'TP']},
			{'name' : 'El Paso6' , 'roads' : ['TP']},
			{'name' : 'El Paso14', 'roads' : ['SP']}],

	'El Paso6' : [{'name' : 'El Paso5' , 'roads' : ['TP']},
			{'name' : 'El Paso7' , 'roads' : ['TP']}],

	'El Paso7' : [{'name' : 'El Paso6' , 'roads' : ['TP']},
			{'name' : 'El Paso8' , 'roads' : ['TP']}],

	'El Paso8' : [{'name' : 'El Paso7' , 'roads' : ['TP']},
			{'name' : 'El Paso9' , 'roads' : ['TP']},
			{'name' : 'El Paso11' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles16' , 'roads' : ['ATSF']}],

	'El Paso9' : [{'name' : 'El Paso8' , 'roads' : ['TP']},
			{'name' : 'El Paso10' , 'roads' : ['TP']}],

	'El Paso10' : [{'name' : 'El Paso9' , 'roads' : ['TP']},
			{'name' : 'Fort Worth' , 'roads' : ['TP']}],

	'El Paso11' : [{'name' : 'El Paso8' , 'roads' : ['ATSF']},
			{'name' : 'El Paso12' , 'roads' : ['ATSF']}],

	'El Paso12' : [{'name' : 'El Paso11' , 'roads' : ['ATSF']},
			{'name' : 'El Paso13' , 'roads' : ['ATSF']}],

	'El Paso13' : [{'name' : 'El Paso12' , 'roads' : ['ATSF']},
			{'name' : 'San Antonio2' , 'roads' : ['ATSF']}],

	'El Paso14' : [{'name' : 'El Paso5' , 'roads' : ['SP']},
			{'name' : 'El Paso15' , 'roads' : ['SP']}],

	'El Paso15' : [{'name' : 'El Paso14' , 'roads' : ['SP']},
			{'name' : 'El Paso16' , 'roads' : ['SP']}],

	'El Paso16' : [{'name' : 'El Paso15' , 'roads' : ['SP']},
			{'name' : 'El Paso17' , 'roads' : ['SP']}],

	'El Paso17' : [{'name' : 'El Paso16' , 'roads' : ['SP']},
			{'name' : 'San Antonio' , 'roads' : ['SP']}],

	'Tucumcari' : [{'name' : 'Tucumcari1' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari9' , 'roads' : ['CRIP']},
			{'name' : 'Los Angeles13' , 'roads' : ['SP']}],

	'Tucumcari1' : [{'name' : 'Tucumcari' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari2' , 'roads' : ['CBQ']},
			{'name' : 'Tucumcari3' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari9' , 'roads' : ['CBQ']}],

	'Tucumcari2' : [{'name' : 'Tucumcari1' , 'roads' : ['CBQ']},
			{'name' : 'Pueblo10' , 'roads' : ['CBQ']}],

	'Tucumcari3' : [{'name' : 'Tucumcari1' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari4' , 'roads' : ['CRIP']}],

	'Tucumcari4' : [{'name' : 'Tucumcari3' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari5' , 'roads' : ['CRIP']}],

	'Tucumcari5' : [{'name' : 'Tucumcari4' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari6' , 'roads' : ['CRIP']}],

	'Tucumcari6' : [{'name' : 'Tucumcari5' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari7' , 'roads' : ['CRIP']},
			{'name' : 'Pueblo9' , 'roads' : ['ATSF']},
			{'name' : 'Oklahoma City3' , 'roads' : ['ATSF']}],

	'Tucumcari7' : [{'name' : 'Tucumcari6' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari8' , 'roads' : ['MP']},
			{'name' : 'Pueblo5' , 'roads' : ['MP']},
			{'name' : 'Casper21' , 'roads' : ['CRIP']},
			{'name' : 'Oklahoma City3' , 'roads' : ['CRIP']}],

	'Tucumcari8' : [{'name' : 'Tucumcari7' , 'roads' : ['MP']},
			{'name' : 'Kansas City' , 'roads' : ['MP' , 'ATSF']},
			{'name' : 'Oklahoma City3' , 'roads' : ['ATSF']}],

	'Tucumcari9' : [{'name' : 'Tucumcari' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari1' , 'roads' : ['CBQ']},
			{'name' : 'Tucumcari10' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari17' , 'roads' : ['CBQ']},
			{'name' : 'Los Angeles14' , 'roads' : ['ATSF']}],

	'Tucumcari10' : [{'name' : 'Tucumcari9' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari11' , 'roads' : ['CRIP']}],

	'Tucumcari11' : [{'name' : 'Tucumcari10' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari12' , 'roads' : ['CRIP']}],

	'Tucumcari12' : [{'name' : 'Tucumcari11' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari13' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari15' , 'roads' : ['CRIP']},
			{'name' : 'Oklahoma City' , 'roads' : ['CRIP']}],

	'Tucumcari13' : [{'name' : 'Tucumcari12' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari14' , 'roads' : ['CRIP']}],

	'Tucumcari14' : [{'name' : 'Tucumcari13' , 'roads' : ['CRIP']},
			{'name' : 'Oklahoma City3' , 'roads' : ['CRIP']}
			],

	'Tucumcari15' : [{'name' : 'Tucumcari12' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari16' , 'roads' : ['CRIP']}],

	'Tucumcari16' : [{'name' : 'Tucumcari15' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari19' , 'roads' : ['CBQ']},
			{'name' : 'Fort Worth' , 'roads' : ['CRIP' , 'CBQ']}],

	'Tucumcari17' : [{'name' : 'Tucumcari9' , 'roads' : ['CBQ']},
			{'name' : 'Tucumcari18' , 'roads' : ['CBQ']}],

	'Tucumcari18' : [{'name' : 'Tucumcari17' , 'roads' : ['CBQ']},
			{'name' : 'Tucumcari19' , 'roads' : ['CBQ']}],

	'Tucumcari19' : [{'name' : 'Tucumcari18' , 'roads' : ['CBQ']},
			{'name' : 'Tucumcari16' , 'roads' : ['CBQ']}],

		# PLAINS

	'Fargo' : [{'name' : 'Fargo1' , 'roads' : ['NP']},
			{'name' : 'Fargo2' , 'roads' : ['GN']},
			{ 'name' : 'Spokane14' , 'roads' : ['GN'] },
			{ 'name' : 'Billings8' , 'roads' : ['NP'] }],

	'Fargo1' : [{'name' : 'Fargo' , 'roads' : ['NP']},
			{'name' : 'Fargo3' , 'roads' : ['NP']}],

	'Fargo2' : [{'name' : 'Fargo' , 'roads' : ['GN']},
			{'name' : 'Fargo3' , 'roads' : ['GN']}],

	'Fargo3' : [{'name' : 'Fargo1' , 'roads' : ['NP']},
			{'name' : 'Fargo2' , 'roads' : ['GN']},
			{'name' : 'Minneapolis-St Paul' , 'roads' : ['NP' , 'GN']}],

	'Minneapolis-St Paul' : [{'name' : 'Minneapolis-St Paul1' , 'roads' : ['CNW']},
			{'name' : 'Minneapolis-St Paul4' , 'roads' : ['CMSTPP']},
			{'name' : 'Minneapolis-St Paul6' , 'roads' : ['CRIP']},
			{ 'name' : 'Billings15' , 'roads' : ['CMSTPP']},
			{ 'name' : 'Rapid City6' , 'roads' : ['CNW'] }],

	'Minneapolis-St Paul1' : [{'name' : 'Minneapolis-St Paul' , 'roads' : ['CNW']},
			{'name' : 'Minneapolis-St Paul2' , 'roads' : ['CNW']}],

	'Minneapolis-St Paul2' : [{'name' : 'Minneapolis-St Paul1' , 'roads' : ['CNW']},
			{'name' : 'Minneapolis-St Paul3' , 'roads' : ['CNW']},
			{'name' : 'Minneapolis-St Paul4' , 'roads' : ['CMSTPP']},
			{'name' : 'Minneapolis-St Paul5' , 'roads' : ['CMSTPP']}],

	'Minneapolis-St Paul3' : [{'name' : 'Minneapolis-St Paul2' , 'roads' : ['CNW']},
			{'name' : 'Milwaukee' , 'roads' : ['CNW']}],

	'Minneapolis-St Paul4' : [{'name' : 'Minneapolis-St Paul' , 'roads' : ['CMSTPP']},
			{'name' : 'Minneapolis-St Paul2' , 'roads' : ['CMSTPP']}],

	'Minneapolis-St Paul5' : [{'name' : 'Minneapolis-St Paul2' , 'roads' : ['CMSTPP']},
			{'name' : 'Milwaukee' , 'roads' : ['CMSTPP']}],

	'Minneapolis-St Paul6' : [{'name' : 'Minneapolis-St Paul' , 'roads' : ['CRIP']},
			{'name' : 'Minneapolis-St Paul7' , 'roads' : ['CRIP']}],

	'Minneapolis-St Paul7' : [{'name' : 'Minneapolis-St Paul6' , 'roads' : ['CRIP']},
			{'name' : 'Omaha4' , 'roads' : ['CRIP']}],

	'Des Moines' : [{'name' : 'Des Moines1' , 'roads' : ['CRIP']},
			{'name' : 'Omaha4' , 'roads' : ['CRIP']},
			{'name' : 'Omaha8' , 'roads' : ['CRIP']},
			{'name' : 'Omaha10' , 'roads' : ['CRIP']}],

	'Des Moines1' : [{'name' : 'Des Moines' , 'roads' : ['CRIP']},
			{'name' : 'Des Moines2' , 'roads' : ['CRIP']}],

	'Des Moines2' : [{'name' : 'Des Moines1' , 'roads' : ['CRIP']},
			{'name' : 'Des Moines3' , 'roads' : ['CRIP']}],

	'Des Moines3' : [{'name' : 'Des Moines2' , 'roads' : ['CRIP']},
			{'name' : 'Chicago' , 'roads' : ['CRIP' , 'CBQ']},
			{'name' : 'Kansas City4' , 'roads' : ['CBQ']}],

	'Omaha' : [{'name' : 'Omaha1' , 'roads' : ['CNW']},
			{'name' : 'Omaha3' , 'roads' : ['CNW']},
			{'name' : 'Omaha8' , 'roads' : ['CRIP']},
			{'name' : 'Omaha9' , 'roads' : ['CBQ']},
			{'name' : 'Omaha12' , 'roads' : ['CBQ']},
			{ 'name' : 'Casper6' , 'roads' : ['CNW'] },
			{ 'name' : 'Casper11' , 'roads' : ['CBQ', 'CRIP'] },
			{'name' : 'Casper18' , 'roads' : ['UP']}],

	'Omaha1' : [{'name' : 'Omaha' , 'roads' : ['CNW']},
			{'name' : 'Omaha2' , 'roads' : ['CNW']}],

	'Omaha2' : [{'name' : 'Omaha1' , 'roads' : ['CNW']},
			{'name' : 'Rapid City6' , 'roads' : ['CNW']}],

	'Omaha3' : [{'name' : 'Omaha' , 'roads' : ['CNW']},
			{'name' : 'Omaha4' , 'roads' : ['CNW']}],

	'Omaha4' : [{'name' : 'Omaha3' , 'roads' : ['CNW']},
			{'name' : 'Omaha5' , 'roads' : ['CNW']},
			{'name' : 'Des Moines' , 'roads' : ['CRIP']},
			{'name' : 'Minneapolis-St Paul7' , 'roads' : ['CRUP']}],

	'Omaha5' : [{'name' : 'Omaha4' , 'roads' : ['CNW']},
			{'name' : 'Omaha6' , 'roads' : ['CNW']}],

	'Omaha6' : [{'name' : 'Omaha5' , 'roads' : ['CNW']},
			{'name' : 'Omaha7' , 'roads' : ['CNW']}],

	'Omaha7' : [{'name' : 'Omaha6' , 'roads' : ['CNW']},
			{'name' : 'Chicago' , 'roads' : ['CNW']}],

	'Omaha8' : [{'name' : 'Omaha' , 'roads' : ['CRIP']},
			{'name' : 'Des Moines' , 'roads' : ['CRIP']}],

	'Omaha9' : [{'name' : 'Omaha' , 'roads' : ['CBQ']},
			{'name' : 'Omaha10' , 'roads' : ['CBQ']}],

	'Omaha10' : [{'name' : 'Omaha9' , 'roads' : ['CBQ']},
			{'name' : 'Omaha11' , 'roads' : ['CBQ']},
			{'name' : 'Des Moines' , 'roads' : ['CRIP']},
			{'name' : 'Kansas City1' , 'roads' : ['CRIP']}],

	'Omaha11' : [{'name' : 'Omaha10' , 'roads' : ['CBQ']},
			{'name' : 'Kansas City4' , 'roads' : ['CBQ']}],

	'Omaha12' : [{'name' : 'Omaha' , 'roads' : ['CBQ']},
			{'name' : 'Omaha13' , 'roads' : ['CBQ']}],

	'Omaha13' : [{'name' : 'Omaha12' , 'roads' : ['CBQ']},
			{'name' : 'Kansas City' , 'roads' : ['CBQ']}],

	'Kansas City' : [{'name' : 'Kansas City1' , 'roads' : ['CRIP']},
			{'name' : 'Kansas City2' , 'roads' : ['ATSF']},
			{'name' : 'Kansas City6' , 'roads' : ['GMO']},
			{'name' : 'Kansas City12' , 'roads' : ['MP']},
			{'name' : 'Omaha13' , 'roads' : ['CBQ']},
			{'name' : 'Casper21' , 'roads' : ['CRIP' , 'UP']},
			{'name' : 'Oklahoma City8' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City9' , 'roads' : ['MP']}],

	'Kansas City1' : [{'name' : 'Kansas City' , 'roads' : ['CRIP']},
			{'name' : 'Omaha10' , 'roads' : ['CRIP']}],

	'Kansas City2' : [{'name' : 'Kansas City' , 'roads' : ['ATSF']},
			{'name' : 'Kansas City3' , 'roads' : ['ATSF']}],

	'Kansas City3' : [{'name' : 'Kansas City2' , 'roads' : ['ATSF']},
			{'name' : 'Kansas City4' , 'roads' : ['ATSF']}],

	'Kansas City4' : [{'name' : 'Kansas City3' , 'roads' : ['ATSF']},
			{'name' : 'Kansas City5' , 'roads' : ['ATSF']},
			{'name' : 'Kansas City9' , 'roads' : ['CBQ']},
			{'name' : 'Omaha11' , 'roads' : ['CBQ']},
			{'name' : 'Des Moines3' , 'roads' : ['CBQ']}],

	'Kansas City5' : [{'name' : 'Kansas City4' , 'roads' : ['ATSF']},
			{'name' : 'Chicago' , 'roads' : ['ATSF']}],

	'Kansas City6' : [{'name' : 'Kansas City' , 'roads' : ['GMO']},
			{'name' : 'Kansas City7' , 'roads' : ['GMO']}],

	'Kansas City7' : [{'name' : 'Kansas City6' , 'roads' : ['GMO']},
			{'name' : 'Kansas City8' , 'roads' : ['GMO']}],

	'Kansas City8' : [{'name' : 'Kansas City7' , 'roads' : ['GMO']},
			{'name' : 'Kansas City9' , 'roads' : ['CBQ']},
			{'name' : 'Kansas City10' , 'roads' : ['GMO']},
			{'name' : 'St Louis' , 'roads' : ['CBQ']}],

	'Kansas City9' : [{'name' : 'Kansas City4' , 'roads' : ['CBQ']},
			{'name' : 'Kansas City8' , 'roads' : ['CBQ']}],

	'Kansas City10' : [{'name' : 'Kansas City8' , 'roads' : ['GMO']},
			{'name' : 'Kansas City11' , 'roads' : ['GMO']},
			{'name' : 'St Louis' , 'roads' : ['GMO']}],

	'Kansas City11' : [{'name' : 'Kansas City10' , 'roads' : ['GMO']},
			{'name' : 'Chicago' , 'roads' : ['GMO']}],

	'Kansas City12' : [{'name' : 'Kansas City' , 'roads' : ['MP']},
			{'name' : 'Kansas City13' , 'roads' : ['MP']}],

	'Kansas City13' : [{'name' : 'Kansas City12' , 'roads' : ['MP']},
			{'name' : 'Kansas City14' , 'roads' : ['MP']}],

	'Kansas City14' : [{'name' : 'Kansas City13' , 'roads' : ['MP']},
			{'name' : 'St Louis' , 'roads' : ['MP']}],

	'Oklahoma City' : [{'name' : 'Oklahoma City1' , 'roads' : ['ATSF']},
			{'name' : 'Oklahoma City4' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City13' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari12' , 'roads' : ['CRIP']},
			{'name' : 'Fort Worth2' , 'roads' : ['ATSF']}],

	'Oklahoma City1' : [{'name' : 'Oklahoma City' , 'roads' : ['ATSF']},
			{'name' : 'Oklahoma City2' , 'roads' : ['ATSF']}],

	'Oklahoma City2' : [{'name' : 'Oklahoma City1' , 'roads' : ['ATSF']},
			{'name' : 'Oklahoma City3' , 'roads' : ['ATSF']}],

	'Oklahoma City3' : [{'name' : 'Oklahoma City2' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari6' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari7' , 'roads' : ['CRIP']},
			{'name' : 'Tucumcari8' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari14' , 'roads' : ['CRIP']}],

	'Oklahoma City4' : [{'name' : 'Oklahoma City' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City5' , 'roads' : ['SLSF']}],

	'Oklahoma City5' : [{'name' : 'Oklahoma City4' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City6' , 'roads' : ['SLSF']}],

	'Oklahoma City6' : [{'name' : 'Oklahoma City5' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City7' , 'roads' : ['MP']},
			{'name' : 'Oklahoma City10' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City15' , 'roads' : ['SLSF']},
			{'name' : 'Little Rock3' , 'roads' : ['MP']}],

	'Oklahoma City7' : [{'name' : 'Oklahoma City6' , 'roads' : ['MP']},
			{'name' : 'Oklahoma City8' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City9' , 'roads' : ['MP']},
			{'name' : 'Oklahoma City10' , 'roads' : ['SLSF']}],

	'Oklahoma City8' : [{'name' : 'Oklahoma City7' , 'roads' : ['SLSF']},
			{'name' : 'Kansas City' , 'roads' : ['SLSF']}],

	'Oklahoma City9' : [{'name' : 'Oklahoma City7' , 'roads' : ['MP']},
			{'name' : 'Kansas City' , 'roads' : ['MP']}],

	'Oklahoma City10' : [{'name' : 'Oklahoma City6' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City7' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City11' , 'roads' : ['SLSF']},
			{'name' : 'Little Rock6' , 'roads' : ['SLSF']}],

	'Oklahoma City11' : [{'name' : 'Oklahoma City10' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City12' , 'roads' : ['SLSF']}],

	'Oklahoma City12' : [{'name' : 'Oklahoma City11' , 'roads' : ['SLSF']},
			{'name' : 'St Louis' , 'roads' : ['SLSF']}],

	'Oklahoma City13' : [{'name' : 'Oklahoma City' , 'roads' : ['CRIP']},
			{'name' : 'Oklahoma City14' , 'roads' : ['CRIP']}],

	'Oklahoma City14' : [{'name' : 'Oklahoma City13' , 'roads' : ['CRIP']},
			{'name' : 'Oklahoma City15' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City16' , 'roads' : ['CRIP']},
			{'name' : 'Dallas2' , 'roads' : ['SLSF']}],

	'Oklahoma City15' : [{'name' : 'Oklahoma City6' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City14' , 'roads' : ['SLSF']}],

	'Oklahoma City16' : [{'name' : 'Oklahoma City14' , 'roads' : ['CRIP']},
			{'name' : 'Little Rock' , 'roads' : ['CRIP']}],

	'Denver' : [{'name' : 'Denver1' , 'roads' : ['CBQ']},
			{'name' : 'Denver6' , 'roads' : ['CBQ', 'DRGW']},
			{ 'name' : 'Salt Lake City6' , 'roads' : ['DRGW'] },
			{ 'name' : 'Casper13' , 'roads' : ['CBQ'] }],

	'Denver1' : [{'name' : 'Denver' , 'roads' : ['CBQ']},
			{'name' : 'Denver2' , 'roads' : ['CBQ']}],

	'Denver2' : [{'name' : 'Denver1' , 'roads' : ['CBQ']},
			{'name' : 'Denver3' , 'roads' : ['CBQ']}],

	'Denver3' : [{'name' : 'Denver2' , 'roads' : ['CBQ']},
			{'name' : 'Denver4' , 'roads' : ['CBQ']}],

	'Denver4' : [{'name' : 'Denver3' , 'roads' : ['CBQ']},
			{'name' : 'Denver5' , 'roads' : ['CBQ']}],

	'Denver5' : [{'name' : 'Denver4' , 'roads' : ['CBQ']},
			{'name' : 'Casper19' , 'roads' : ['CBQ']}],

	'Denver6' : [{'name' : 'Denver' , 'roads' : ['CBQ', 'DRGW']},
			{'name' : 'Denver7' , 'roads' : ['CRIP']},
			{'name' : 'Pueblo' , 'roads' : ['CBQ', 'DRGW']}],

	'Denver7' : [{'name' : 'Denver6' , 'roads' : ['CRIP']},
			{'name' : 'Denver8' , 'roads' : ['CRIP']}],

	'Denver8' : [{'name' : 'Denver7' , 'roads' : ['CRIP']},
			{'name' : 'Denver9' , 'roads' : ['CRIP']}],

	'Denver9' : [{'name' : 'Denver8' , 'roads' : ['CRIP']},
			{'name' : 'Denver10' , 'roads' : ['CRIP']}],

	'Denver10' : [{'name' : 'Denver9' , 'roads' : ['CRIP']},
			{'name' : 'Denver11' , 'roads' : ['CRIP']}],

	'Denver11' : [{'name' : 'Denver10' , 'roads' : ['CRIP']},
			{'name' : 'Denver12' , 'roads' : ['CRIP']},
			{'name' : 'Casper19' , 'roads' : ['CRIP']}],

	'Denver12' : [{'name' : 'Denver11' , 'roads' : ['CRIP']},
			{'name' : 'Casper21' , 'roads' : ['CRIP']}],

	'Pueblo' : [{'name' : 'Pueblo1' , 'roads' : ['MP']},
			{'name' : 'Pueblo6' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo10' , 'roads' : ['CBQ']},
			{ 'name' : 'Salt Lake City8' , 'roads' : ['DRGW'] },
			{'name' : 'Denver6' , 'roads' : ['CBQ', 'DRGW']}],

	'Pueblo1' : [{'name' : 'Pueblo' , 'roads' : ['MP']},
			{'name' : 'Pueblo2' , 'roads' : ['MP']}],

	'Pueblo2' : [{'name' : 'Pueblo1' , 'roads' : ['MP']},
			{'name' : 'Pueblo3' , 'roads' : ['MP']}],

	'Pueblo3' : [{'name' : 'Pueblo2' , 'roads' : ['MP']},
			{'name' : 'Pueblo4' , 'roads' : ['MP']}],

	'Pueblo4' : [{'name' : 'Pueblo3' , 'roads' : ['MP']},
			{'name' : 'Pueblo5' , 'roads' : ['MP']}],

	'Pueblo5' : [{'name' : 'Pueblo4' , 'roads' : ['MP']},
			{'name' : 'Tucumcari7' , 'roads' : ['MP']}],

	'Pueblo6' : [{'name' : 'Pueblo' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo7' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo10' , 'roads' : ['ATSF']}],

	'Pueblo7' : [{'name' : 'Pueblo6' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo8' , 'roads' : ['ATSF']}],

	'Pueblo8' : [{'name' : 'Pueblo7' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo9' , 'roads' : ['ATSF']}],

	'Pueblo9' : [{'name' : 'Pueblo8' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari6' , 'roads' : ['ATSF']}],

	'Pueblo10' : [{'name' : 'Pueblo' , 'roads' : ['CBQ']},
			{'name' : 'Pueblo6' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo11' , 'roads' : ['ATSF']},
			{'name' : 'Tucumcari2' , 'roads' : ['CBQ']}],

	'Pueblo11' : [{'name' : 'Pueblo10' , 'roads' : ['ATSF']},
			{'name' : 'Pueblo12' , 'roads' : ['ATSF']}],

	'Pueblo12' : [{'name' : 'Pueblo11' , 'roads' : ['ATSF']},
			{'name' : 'Los Angeles12' , 'roads' : ['ATSF']}],

# SOUTH CENTRAL

	'Fort Worth' : [{'name' : 'Fort Worth1' , 'roads' : ['ATSF']},
			{'name' : 'Dallas' , 'roads' : ['TP' , 'SLSF']},
			{'name' : 'San Antonio3' , 'roads' : ['ATSF']},
			{'name' : 'El Paso10' , 'roads' : ['TP']},
			{'name' : 'Tucumcari19' , 'roads' : ['CRIP' , 'CBQ']}],

	'Fort Worth1' : [{'name' : 'Fort Worth' , 'roads' : ['ATSF']},
			{'name' : 'Fort Worth2' , 'roads' : ['ATSF']}],

	'Fort Worth2' : [{'name' : 'Fort Worth1' , 'roads' : ['ATSF']},
			{'name' : 'Oklahoma City' , 'roads' : ['ATSF']}],

	'Dallas' : [{'name' : 'Dallas1' , 'roads' : ['SLSF']},
			{'name' : 'Dallas3' , 'roads' : ['TP']},
			{'name' : 'Fort Worth' , 'roads' : ['TP' , 'SLSF']}],

	'Dallas1' : [{'name' : 'Dallas' , 'roads' : ['SLSF']},
			{'name' : 'Dallas2' , 'roads' : ['SLSF']}],

	'Dallas2' : [{'name' : 'Dallas1' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City14' , 'roads' : ['SLSF']}],

	'Dallas3' : [{'name' : 'Dallas' , 'roads' : ['TP']},
			{'name' : 'San Antonio6' , 'roads' : ['TP']}],

	'Shreveport' : [{'name' : 'Shreveport1' , 'roads' : ['IC']},
			{'name' : 'Shreveport9' , 'roads' : ['TP']},
			{'name' : 'Houston3' , 'roads' : ['SP']},
			{'name' : 'San Antonio6' , 'roads' : ['TP']},
			{'name' : 'San Antonio7' , 'roads' : ['TP']}],

	'Shreveport1' : [{'name' : 'Shreveport' , 'roads' : ['IC']},
			{'name' : 'Shreveport2' , 'roads' : ['IC']}],

	'Shreveport2' : [{'name' : 'Shreveport1' , 'roads' : ['IC']},
			{'name' : 'Shreveport3' , 'roads' : ['IC']}],

	'Shreveport3' : [{'name' : 'Shreveport2' , 'roads' : ['IC']},
			{'name' : 'Shreveport4' , 'roads' : ['IC']}],

	'Shreveport4' : [{'name' : 'Shreveport3' , 'roads' : ['IC']},
			{'name' : 'Shreveport5' , 'roads' : ['IC']},
			{'name' : 'Shreveport7' , 'roads' : ['IC']},
			{'name' : 'New Orleans3' , 'roads' : ['IC']}],

	'Shreveport5' : [{'name' : 'Shreveport4' , 'roads' : ['IC']},
			{'name' : 'Shreveport6' , 'roads' : ['IC']}],

	'Shreveport6' : [{'name' : 'Shreveport5' , 'roads' : ['IC']},
			{'name' : 'Memphis' , 'roads' : ['IC']}],

	'Shreveport7' : [{'name' : 'Shreveport4' , 'roads' : ['IC']},
			{'name' : 'Shreveport8' , 'roads' : ['IC']}],

	'Shreveport8' : [{'name' : 'Shreveport7' , 'roads' : ['IC']},
			{'name' : 'New Orleans' , 'roads' : ['IC']}],

	'Shreveport9' : [{'name' : 'Shreveport' , 'roads' : ['TP']},
			{'name' : 'Shreveport10' , 'roads' : ['TP']}],

	'Shreveport10' : [{'name' : 'Shreveport9' , 'roads' : ['TP']},
			{'name' : 'Shreveport11' , 'roads' : ['TP']}],

	'Shreveport11' : [{'name' : 'Shreveport10' , 'roads' : ['TP']},
			{'name' : 'New Orleans' , 'roads' : ['TP']}],

	'New Orleans' : [{'name' : 'New Orleans1' , 'roads' : ['SOU']},
			{'name' : 'New Orleans6' , 'roads' : ['LN']},
			{'name' : 'Shreveport8' , 'roads' : ['IC']},
			{'name' : 'Shreveport11' , 'roads' : ['TP']},
			{'name' : 'Houston6' , 'roads' : ['SP']}],

	'New Orleans1' : [{'name' : 'New Orleans' , 'roads' : ['SOU']},
			{'name' : 'New Orleans2' , 'roads' : ['SOU']}],

	'New Orleans2' : [{'name' : 'New Orleans1' , 'roads' : ['SOU']},
			{'name' : 'New Orleans3' , 'roads' : ['SOU']}],

	'New Orleans3' : [{'name' : 'New Orleans2' , 'roads' : ['SOU']},
			{'name' : 'New Orleans4' , 'roads' : ['GMO']},
			{'name' : 'New Orleans5' , 'roads' : ['SOU']},
			{'name' : 'Shreveport4' , 'roads' : ['IC']},
			{'name' : 'Mobile' , 'roads' : ['GMO']}],

	'New Orleans4' : [{'name' : 'New Orleans3' , 'roads' : ['GMO']},
			{'name' : 'New Orleans5' , 'roads' : ['GMO']},
			{'name' : 'Memphis13' , 'roads' : ['GMO']}],

	'New Orleans5' : [{'name' : 'New Orleans3' , 'roads' : ['SOU']},
			{'name' : 'New Orleans4' , 'roads' : ['GMO']},
			{'name' : 'Birmingham' , 'roads' : ['SOU']}],

	'New Orleans6' : [{'name' : 'New Orleans' , 'roads' : ['LN']},
			{'name' : 'Mobile' , 'roads' : ['LN']}],

	'San Antonio' : [{'name' : 'San Antonio1' , 'roads' : ['MP']},
			{'name' : 'San Antonio9' , 'roads' : ['SP']},
			{'name' : 'El Paso17' , 'roads' : ['SP']}],

	'San Antonio1' : [{'name' : 'San Antonio' , 'roads' : ['MP']},
			{'name' : 'San Antonio2' , 'roads' : ['MP']}],

	'San Antonio2' : [{'name' : 'San Antonio1' , 'roads' : ['MP']},
			{'name' : 'San Antonio3' , 'roads' : ['ATSF']},
			{'name' : 'San Antonio4' , 'roads' : ['MP']},
			{'name' : 'San Antonio11' , 'roads' : ['ATSF']},
			{'name' : 'El Paso13' , 'roads' : ['ATSF']}],

	'San Antonio3' : [{'name' : 'San Antonio2' , 'roads' : ['ATSF']},
			{'name' : 'Fort Worth' , 'roads' : ['ATSF']}],

	'San Antonio4' : [{'name' : 'San Antonio2' , 'roads' : ['MP']},
			{'name' : 'San Antonio5' , 'roads' : ['MP']}],

	'San Antonio5' : [{'name' : 'San Antonio4' , 'roads' : ['MP']},
			{'name' : 'San Antonio6' , 'roads' : ['MP']},
			{'name' : 'Houston1' , 'roads' : ['MP']}],

	'San Antonio6' : [{'name' : 'San Antonio5' , 'roads' : ['MP']},
			{'name' : 'San Antonio7' , 'roads' : ['MP']},
			{'name' : 'Dallas3' , 'roads' : ['TP']},
			{'name' : 'Shreveport' , 'roads' : ['TP']}],

	'San Antonio7' : [{'name' : 'San Antonio6' , 'roads' : ['MP']},
			{'name' : 'San Antonio8' , 'roads' : ['MP']},
			{'name' : 'Shreveport' , 'roads' : ['TP']}],

	'San Antonio8' : [{'name' : 'San Antonio7' , 'roads' : ['MP']},
			{'name' : 'Little Rock' , 'roads' : ['MP']}],

	'San Antonio9' : [{'name' : 'San Antonio' , 'roads' : ['SP']},
			{'name' : 'San Antonio10' , 'roads' : ['SP']}],

	'San Antonio10' : [{'name' : 'San Antonio9' , 'roads' : ['SP']},
			{'name' : 'San Antonio11' , 'roads' : ['ATSF']},
			{'name' : 'Houston' , 'roads' : ['SP' , 'ATSF']}],

	'San Antonio11' : [{'name' : 'San Antonio2' , 'roads' : ['ATSF']},
			{'name' : 'San Antonio10' , 'roads' : ['ATSF']}],

	'Houston' : [{'name' : 'Houston1' , 'roads' : ['MP']},
			{'name' : 'Houston2' , 'roads' : ['SP']},
			{'name' : 'Houston4' , 'roads' : ['SP']}],

	'Houston1' : [{'name' : 'Houston' , 'roads' : ['MP']},
			{'name' : 'San Antonio5' , 'roads' : ['MP']}],

	'Houston2' : [{'name' : 'Houston' , 'roads' : ['SP']},
			{'name' : 'Houston3' , 'roads' : ['SP']}],

	'Houston3' : [{'name' : 'Houston2' , 'roads' : ['SP']},
			{'name' : 'Shreveport' , 'roads' : ['SP']}],

	'Houston4' : [{'name' : 'Houston' , 'roads' : ['SP']},
			{'name' : 'Houston5' , 'roads' : ['SP']}],

	'Houston5' : [{'name' : 'Houston4' , 'roads' : ['SP']},
			{'name' : 'Houston6' , 'roads' : ['SP']}],

	'Houston6' : [{'name' : 'Houston5' , 'roads' : ['SP']},
			{'name' : 'New Orleans' , 'roads' : ['SP']}],

	'Little Rock' : [{'name' : 'Little Rock1' , 'roads' : ['MP']},
			{'name' : 'Little Rock9' , 'roads' : ['CRIP']},
			{'name' : 'Oklahoma City16' , 'roads' : ['CRIP']},
			{'name' : 'San Antonio8' , 'roads' : ['MP']}],

	'Little Rock1' : [{'name' : 'Little Rock' , 'roads' : ['MP']},
			{'name' : 'Little Rock2' , 'roads' : ['MP']},
			{'name' : 'Little Rock4' , 'roads' : ['MP']},
			{'name' : 'Memphis' , 'roads' : ['MP']}],

	'Little Rock2' : [{'name' : 'Little Rock1' , 'roads' : ['MP']},
			{'name' : 'Little Rock3' , 'roads' : ['MP']},
			{'name' : 'Little Rock4' , 'roads' : ['MP']}],

	'Little Rock3' : [{'name' : 'Little Rock2' , 'roads' : ['MP']},
			{'name' : 'Oklahoma City6' , 'roads' : ['MP']}],

	'Little Rock4' : [{'name' : 'Little Rock1' , 'roads' : ['MP']},
			{'name' : 'Little Rock2' , 'roads' : ['MP']},
			{'name' : 'Little Rock5' , 'roads' : ['SLSF']},
			{'name' : 'Little Rock7' , 'roads' : ['MP']},
			{'name' : 'Memphis' , 'roads' : ['SLSF']}],

	'Little Rock5' : [{'name' : 'Little Rock4' , 'roads' : ['SLSF']},
			{'name' : 'Little Rock6' , 'roads' : ['SLSF']}],

	'Little Rock6' : [{'name' : 'Little Rock5' , 'roads' : ['SLSF']},
			{'name' : 'Oklahoma City10' , 'roads' : ['SLSF']}],

	'Little Rock7' : [{'name' : 'Little Rock4' , 'roads' : ['MP']},
			{'name' : 'Little Rock8' , 'roads' : ['MP']}],

	'Little Rock8' : [{'name' : 'Little Rock7' , 'roads' : ['MP']},
			{'name' : 'St Louis' , 'roads' : ['MP']}],

	'Little Rock9' : [{'name' : 'Little Rock' , 'roads' : ['CRIP']},
			{'name' : 'Memphis' , 'roads' : ['CRIP']}],

	'Memphis' : [{'name' : 'Memphis1' , 'roads' : ['IC']},
			{'name' : 'Memphis7' , 'roads' : ['LN']},
			{'name' : 'Memphis9' , 'roads' : ['SOU']},
			{'name' : 'Memphis13' , 'roads' : ['SLSF']},
			{'name' : 'Little Rock1' , 'roads' : ['MP']},
			{'name' : 'Little Rock4' , 'roads' : ['SLSF']},
			{'name' : 'Little Rock9' , 'roads' : ['CRIP']},
			{'name' : 'Shreveport6' , 'roads' : ['IC']}],

	'Memphis1' : [{'name' : 'Memphis' , 'roads' : ['IC']},
			{'name' : 'Memphis2' , 'roads' : ['IC']}],

	'Memphis2' : [{'name' : 'Memphis1' , 'roads' : ['IC']},
			{'name' : 'Memphis3' , 'roads' : ['GMO']},
			{'name' : 'Memphis4' , 'roads' : ['IC']},
			{'name' : 'Memphis5' , 'roads' : ['IC']},
			{'name' : 'Memphis7' , 'roads' : ['GMO']}],

	'Memphis3' : [{'name' : 'Memphis2' , 'roads' : ['GMO']},
			{'name' : 'St Louis' , 'roads' : ['GMO']}],

	'Memphis4' : [{'name' : 'Memphis2' , 'roads' : ['IC']},
			{'name' : 'St Louis' , 'roads' : ['IC']},
			{'name' : 'St Louis5' , 'roads' : ['IC']}],

	'Memphis5' : [{'name' : 'Memphis2' , 'roads' : ['IC']},
			{'name' : 'Memphis6' , 'roads' : ['IC']},
			{'name' : 'Nashville1' , 'roads' : ['IC']}],

	'Memphis6' : [{'name' : 'Memphis5' , 'roads' : ['IC']},
			{'name' : 'Louisville' , 'roads' : ['IC']},
			{'name' : 'Nashville1' , 'roads' : ['IC']}],

	'Memphis7' : [{'name' : 'Memphis' , 'roads' : ['LN']},
			{'name' : 'Memphis2' , 'roads' : ['GMO']},
			{'name' : 'Memphis8' , 'roads' : ['LN']},
			{'name' : 'Memphis9' , 'roads' : ['GMO']}],

	'Memphis8' : [{'name' : 'Memphis7' , 'roads' : ['LN']},
			{'name' : 'Nashville' , 'roads' : ['LN']}],

	'Memphis9' : [{'name' : 'Memphis' , 'roads' : ['SOU']},
			{'name' : 'Memphis7' , 'roads' : ['GMO']},
			{'name' : 'Memphis10' , 'roads' : ['SOU']},
			{'name' : 'Memphis12' , 'roads' : ['SOU']},
			{'name' : 'Memphis13' , 'roads' : ['GMO']}],

	'Memphis10' : [{'name' : 'Memphis9' , 'roads' : ['SOU']},
			{'name' : 'Memphis11' , 'roads' : ['SOU']}],

	'Memphis11' : [{'name' : 'Memphis10' , 'roads' : ['SOU']},
			{'name' : 'Chattanooga' , 'roads' : ['SOU']}],

	'Memphis12' : [{'name' : 'Memphis9' , 'roads' : ['SOU']},
			{'name' : 'Birmingham' , 'roads' : ['SOU']}],

	'Memphis13' : [{'name' : 'Memphis' , 'roads' : ['SLSF']},
			{'name' : 'Memphis9' , 'roads' : ['GMO']},
			{'name' : 'Memphis14' , 'roads' : ['SLSF']},
			{'name' : 'New Orleans4' , 'roads' : ['GMO']}],

	'Memphis14' : [{'name' : 'Memphis13' , 'roads' : ['SLSF']},
			{'name' : 'Birmingham' , 'roads' : ['SLSF']}],

	'Birmingham' : [{'name' : 'Birmingham1' , 'roads' : ['LN']},
			{'name' : 'Birmingham3' , 'roads' : ['SAL']},
			{'name' : 'Birmingham4' , 'roads' : ['SOU']},
			{'name' : 'Birmingham5' , 'roads' : ['ACL']},
			{'name' : 'New Orleans5' , 'roads' : ['SOU']},
			{'name' : 'Memphis12' , 'roads' : ['SOU']},
			{'name' : 'Memphis14' , 'roads' : ['SLSF']},
			{'name' : 'Mobile3' , 'roads' : ['LN']}],

	'Birmingham1' : [{'name' : 'Birmingham' , 'roads' : ['LN']},
			{'name' : 'Birmingham2' , 'roads' : ['LN']}],

	'Birmingham2' : [{'name' : 'Birmingham1' , 'roads' : ['LN']},
			{'name' : 'Nashville' , 'roads' : ['LN']}],

	'Birmingham3' : [{'name' : 'Birmingham' , 'roads' : ['SAL']},
			{'name' : 'Atlanta' , 'roads' : ['SAL']}],

	'Birmingham4' : [{'name' : 'Birmingham' , 'roads' : ['SOU']},
			{'name' : 'Atlanta' , 'roads' : ['SOU']}],

	'Birmingham5' : [{'name' : 'Birmingham' , 'roads' : ['ACL']},
			{'name' : 'Birmingham6' , 'roads' : ['ACL']}],

	'Birmingham6' : [{'name' : 'Birmingham5' , 'roads' : ['ACL']},
			{'name' : 'Birmingham7' , 'roads' : ['ACL']},
			{'name' : 'Atlanta' , 'roads' : ['ACL']}],

	'Birmingham7' : [{'name' : 'Birmingham6' , 'roads' : ['ACL']},
			{'name' : 'Birmingham8' , 'roads' : ['ACL']},
			{'name' : 'Mobile13' , 'roads' : ['ACL']}],

	'Birmingham8' : [{'name' : 'Birmingham7' , 'roads' : ['ACL']},
			{'name' : 'Jacksonville' , 'roads' : ['ACL']},
			{'name' : 'Mobile12' , 'roads' : ['ACL']},
			{'name' : 'Jacksonville2' , 'roads' : ['ACL']}],

	'Nashville' : [{'name' : 'Nashville1' , 'roads' : ['LN']},
			{'name' : 'Nashville2' , 'roads' : ['LN']},
			{'name' : 'Nashville4' , 'roads' : ['LN']},
			{'name' : 'Memphis8' , 'roads' : ['LN']},
			{'name' : 'Birmingham2' , 'roads' : ['LN']}],

	'Nashville1' : [{'name' : 'Nashville' , 'roads' : ['LN']},
			{'name' : 'Memphis5' , 'roads' : ['IC']},
			{'name' : 'Memphis6' , 'roads' : ['IC']}],

	'Nashville2' : [{ 'name' : 'Nashville' , 'roads' : ['LN'] },
			{ 'name' : 'Nashville3' , 'roads' : ['LN'] }],

	'Nashville3' : [{ 'name' : 'Nashville2' , 'roads' : ['LN'] },
			{ 'name' : 'Louisville' , 'roads' : ['LN'] }],

	'Nashville4' : [{ 'name' : 'Nashville' , 'roads' : ['LN'] },
			{ 'name' : 'Chattanooga' , 'roads' : ['LN'] }],

	'Louisville' : [{ 'name' : 'Louisville1' , 'roads' : ['CO'] },
			{ 'name' : 'Cincinnati' , 'roads' : ['LN'] },
			{ 'name' : 'Nashville3' , 'roads' : ['LN'] },
			{ 'name' : 'Memphis6' , 'roads' : ['IC'] },
			{'name' : 'St Louis7' , 'roads' : ['PA']}],

	'Louisville1' : [{ 'name' : 'Louisville' , 'roads' : ['CO'] },
			{ 'name' : 'Louisville2' , 'roads' : ['CO'] },
			{ 'name' : 'Louisville3' , 'roads' : ['LN'] },
			{ 'name' : 'Cincinnati' , 'roads' : ['LN'] }],

	'Louisville2' : [{ 'name' : 'Louisville1' , 'roads' : ['CO'] },
			{'name' : 'Cincinnati8' , 'roads' : ['CO']}],

	'Louisville3' : [{ 'name' : 'Louisville1' , 'roads' : ['LN'] },
			{ 'name' : 'Louisville4' , 'roads' : ['LN'] }],

	'Louisville4' : [{ 'name' : 'Louisville3' , 'roads' : ['LN'] },
			{ 'name' : 'Knoxville' , 'roads' : ['LN'] }],

	'St Louis' : [{ 'name' : 'St Louis1' , 'roads' : ['NYC'] },
			{ 'name' : 'St Louis3' , 'roads' : ['PA'] },
			{ 'name' : 'St Louis5' , 'roads' : ['BO'] },
			{ 'name' : 'Memphis3' , 'roads' : ['GMO'] },
			{ 'name' : 'Memphis4' , 'roads' : ['IC'] },
			{ 'name' : 'Kansas City8' , 'roads' : ['CBQ'] },
			{ 'name' : 'Kansas City10' , 'roads' : ['GMO'] },
			{ 'name' : 'Kansas City14' , 'roads' : ['MP'] },
			{ 'name' : 'Oklahoma City12' , 'roads' : ['SLSF'] },
			{ 'name' : 'Little Rock8' , 'roads' : ['MP'] }],

	'St Louis1' : [{ 'name' : 'St Louis' , 'roads' : ['NYC'] },
			{ 'name' : 'St Louis2' , 'roads' : ['IC'] },
			{ 'name' : 'St Louis3' , 'roads' : ['IC'] },
			{ 'name' : 'St Louis4' , 'roads' : ['NYC'] }],

	'St Louis2' : [{ 'name' : 'St Louis1' , 'roads' : ['IC'] },
			{ 'name' : 'Chicago' , 'roads' : ['IC'] }],

	'St Louis3' : [{ 'name' : 'St Louis' , 'roads' : ['PA'] },
			{ 'name' : 'St Louis1' , 'roads' : ['IC'] },
			{ 'name' : 'St Louis4' , 'roads' : ['PA'] },
			{ 'name' : 'St Louis5' , 'roads' : ['IC'] }],

	'St Louis4' : [{ 'name' : 'St Louis1' , 'roads' : ['NYC'] },
			{ 'name' : 'St Louis3' , 'roads' : ['PA'] },
			{ 'name' : 'Indianapolis' , 'roads' : ['NYC' , 'PA'] }],

	'St Louis5' : [{ 'name' : 'St Louis' , 'roads' : ['BO'] },
			{ 'name' : 'St Louis3' , 'roads' : ['IC'] },
			{ 'name' : 'St Louis6' , 'roads' : ['BO'] },
			{ 'name' : 'Memphis4' , 'roads' : ['IC'] }],

	'St Louis6' : [{ 'name' : 'St Louis5' , 'roads' : ['BO'] },
			{ 'name' : 'St Louis7' , 'roads' : ['BO'] }],

	'St Louis7' : [{ 'name' : 'St Louis6' , 'roads' : ['BO'] },
			{ 'name' : 'Cincinnati' , 'roads' : ['BO'] },
			{ 'name' : 'Indianapolis' , 'roads' : ['PA'] },
			{ 'name' : 'Louisville' , 'roads' : ['PA'] }],

	'Indianapolis' : [{'name' : 'Indianapolis1' , 'roads' : ['NYC']},
			{'name' : 'St Louis4' , 'roads' : ['PA' , 'NYC']},
			{'name' : 'St Louis7' , 'roads' : ['PA']},
			{'name' : 'Cincinnati1' , 'roads' : ['PA']},
			{'name' : 'Chicago9' , 'roads' : ['PA']}],

	'Indianapolis1' : [{'name' : 'Indianapolis' , 'roads' : ['NYC']},
			{'name' : 'Indianapolis2' , 'roads' : ['NYC']},
			{'name' : 'Cincinnati' , 'roads' : ['CO']},
			{'name' : 'Chicago8' , 'roads' : ['CO']}],

	'Indianapolis2' : [{'name' : 'Indianapolis1' , 'roads' : ['NYC']},
			{'name' : 'Indianapolis3' , 'roads' : ['NYC']},
			{'name' : 'Cincinnati1' , 'roads' : ['NYC']}],

	'Indianapolis3' : [{'name' : 'Indianapolis2' , 'roads' : ['NYC']},
			{'name' : 'Detroit' , 'roads' : ['NYC' , 'CO']},
			{'name' : 'Cleveland' , 'roads' : ['NYC']},
			{'name' : 'Chicago2' , 'roads' : ['NYC']},
			{'name' : 'Chicago5' , 'roads' : ['CO']}],

	'Cincinnati' : [{ 'name' : 'Cincinnati1' , 'roads' : ['PA' , 'NYC'] },
			{ 'name' : 'Cincinnati2' , 'roads' : ['BO'] },
			{ 'name' : 'Cincinnati6' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati7' , 'roads' : ['CO'] },
			{ 'name' : 'Louisville' , 'roads' : ['LN'] },
			{ 'name' : 'Louisville1' , 'roads' : ['LN'] },
			{ 'name' : 'St Louis7' , 'roads' : ['BO'] },
			{ 'name' : 'Indianapolis1' , 'roads' : ['CO'] }],

	'Cincinnati1' : [{ 'name' : 'Cincinnati' , 'roads' : ['PA' , 'NYC'] },
			{ 'name' : 'Indianapolis' , 'roads' : ['PA'] },
			{ 'name' : 'Indianapolis2' , 'roads' : ['NYC'] },
			{ 'name' : 'Columbus' , 'roads' : ['PA'] }],

	'Cincinnati2' : [{ 'name' : 'Cincinnati' , 'roads' : ['BO'] },
			{ 'name' : 'Cincinnati3' , 'roads' : ['BO'] },
			{ 'name' : 'Cincinnati8' , 'roads' : ['CO' , 'NW'] },
			{ 'name' : 'Columbus' , 'roads' : ['CO' , 'NW'] }],

	'Cincinnati3' : [{ 'name' : 'Cincinnati2' , 'roads' : ['BO'] },
			{ 'name' : 'Cincinnati4' , 'roads' : ['BO'] }],

	'Cincinnati4' : [{ 'name' : 'Cincinnati3' , 'roads' : ['BO'] },
			{ 'name' : 'Cincinnati5' , 'roads' : ['BO'] }],

	'Cincinnati5' : [{ 'name' : 'Cincinnati4' , 'roads' : ['BO'] },
			{ 'name' : 'Pittsburgh5' , 'roads' : ['BO'] }],

	'Cincinnati6' : [{ 'name' : 'Cincinnati' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati8' , 'roads' : ['NW'] }],

	'Cincinnati7' : [{ 'name' : 'Cincinnati' , 'roads' : ['CO'] },
			{ 'name' : 'Cincinnati8' , 'roads' : ['CO'] }],

	'Cincinnati8' : [{ 'name' : 'Cincinnati6' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati7' , 'roads' : ['CO'] },
			{'name' : 'Cincinnati9' , 'roads' : ['CO']},
			{'name' : 'Cincinnati12' , 'roads' : ['NW']},
			{'name' : 'Louisville2' , 'roads' : ['CO']}],

	'Cincinnati9' : [{ 'name' : 'Cincinnati8' , 'roads' : ['CO'] },
			{ 'name' : 'Cincinnati10' , 'roads' : ['CO'] }],

	'Cincinnati10' : [{ 'name' : 'Cincinnati9' , 'roads' : ['CO'] },
			{ 'name' : 'Cincinnati11' , 'roads' : ['CO'] }],

	'Cincinnati11' : [{ 'name' : 'Cincinnati10' , 'roads' : ['CO'] },
			{ 'name' : 'Washington DC2' , 'roads' : ['CO'] }
			],

	'Cincinnati12' : [{ 'name' : 'Cincinnati8' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati13' , 'roads' : ['NW'] }],

	'Cincinnati13' : [{ 'name' : 'Cincinnati12' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati14' , 'roads' : ['NW'] }],

	'Cincinnati14' : [{ 'name' : 'Cincinnati13' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati15' , 'roads' : ['NW'] },
			{'name' : 'Knoxville3' , 'roads' : ['NW']}],

	'Cincinnati15' : [{ 'name' : 'Cincinnati14' , 'roads' : ['NW'] },
			{ 'name' : 'Cincinnati16' , 'roads' : ['NW'] },
			{'name' : 'Washington DC2' , 'roads' : ['SOU']},
			{'name' : 'Charlotte2' , 'roads' : ['SOU']}],

	'Cincinnati16' : [{ 'name' : 'Cincinnati15' , 'roads' : ['NW'] },
			{ 'name' : 'Norfolk1' , 'roads' : ['NW'] }
			],

	'Columbus' : [{'name' : 'Columbus1' , 'roads' : ['PA']},
			{'name' : 'Cincinnati1' , 'roads' : ['PA']},
			{'name' : 'Cincinnati2' , 'roads' : ['CO' , 'NW']},
			{'name' : 'Chicago5' , 'roads' : ['CO']},
			{'name' : 'Chicago6' , 'roads' : ['PA']}],

	'Columbus1' : [{'name' : 'Columbus' , 'roads' : ['PA']},
			{'name' : 'Pittsburgh' , 'roads' : ['PA']}],

	'Cleveland' : [{'name' : 'Cleveland1' , 'roads' : ['NYC']},
			{'name' : 'Indianapolis3' , 'roads' : ['NYC']},
			{'name' : 'Chicago6' , 'roads' : ['PA']}],

	'Cleveland1' : [{'name' : 'Cleveland' , 'roads' : ['NYC']},
			{'name' : 'Buffalo' , 'roads' : ['NYC' , 'PA']},
			{'name' : 'Chicago7' , 'roads' : ['PA']}],

	'Detroit' : [{'name' : 'Indianapolis3' , 'roads' : ['NYC' , 'CO']},
			{'name' : 'Detroit1' , 'roads' : ['CO']}],

	'Detroit1' : [{'name' : 'Detroit' , 'roads' : ['CO']},
			{'name' : 'Detroit2' , 'roads' : ['CO']}],

	'Detroit2' : [{'name' : 'Detroit1' , 'roads' : ['CO']},
			{'name' : 'Buffalo' , 'roads' : ['CO']}],

	'Chicago' : [{'name' : 'Chicago1' , 'roads' : ['NYC']},
			{'name' : 'Chicago3' , 'roads' : ['BO']},
			{'name' : 'Chicago8' , 'roads' : ['CO']},
			{'name' : 'Chicago9' , 'roads' : ['PA']},
			{'name' : 'St Louis2' , 'roads' : ['IC']},
			{'name' : 'Kansas City11' , 'roads' : ['GMO']},
			{'name' : 'Kansas City5' , 'roads' : ['ATSF']},
			{'name' : 'Omaha7' , 'roads' : ['CNW']},
			{'name' : 'Des Moines3' , 'roads' : ['CRIP' , 'CBQ']},
			{'name' : 'Milwaukee1' , 'roads' : ['CNW' , 'CMSTPP']}
			],

	'Chicago1' : [{'name' : 'Chicago' , 'roads' : ['NYC']},
			{'name' : 'Chicago2' , 'roads' : ['NYC']}],

	'Chicago2' : [{'name' : 'Chicago1' , 'roads' : ['NYC']},
			{'name' : 'Indianapolis3' , 'roads' : ['NYC']}],

	'Chicago3' : [{'name' : 'Chicago' , 'roads' : ['BO']},
			{'name' : 'Chicago4' , 'roads' : ['BO']}],

	'Chicago4' : [{'name' : 'Chicago3' , 'roads' : ['BO']},
			{'name' : 'Chicago5' , 'roads' : ['BO']}],

	'Chicago5' : [{'name' : 'Chicago4' , 'roads' : ['BO']},
			{'name' : 'Chicago6' , 'roads' : ['BO']},
			{'name' : 'Indianapolis3' , 'roads' : ['CO']},
			{'name' : 'Columbus' , 'roads' : ['CO']}],

	'Chicago6' : [{'name' : 'Chicago5' , 'roads' : ['BO']},
			{'name' : 'Chicago7' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Columbus' , 'roads' : ['PA']},
			{'name' : 'Cleveland' , 'roads' : ['PA']}],

	'Chicago7' : [{'name' : 'Chicago6' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Pittsburgh' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Cleveland1' , 'roads' : ['PA']}],

	'Chicago8' : [{'name' : 'Chicago' , 'roads' : ['CO']},
			{'name' : 'Indianapolis1' , 'roads' : ['CO']}],

	'Chicago9' : [{'name' : 'Chicago' , 'roads' : ['PA']},
			{'name' : 'Indianapolis' , 'roads' : ['PA']}],

	'Milwaukee' : [{'name' : 'Milwaukee1' , 'roads' : ['CMSTPP' , 'CNW']},
			{'name' : 'Minneapolis-St Paul3' , 'roads' : ['CNW']},
			{'name' : 'Minneapolis-St Paul5' , 'roads' : ['CMSTPP']}],

	'Milwaukee1' : [{'name' : 'Milwaukee' , 'roads' : ['CMSTPP' , 'CNW']},
			{'name' : 'Chicago' , 'roads' : ['CMSTPP' , 'CNW']}],

# NORTHEAST

	'Buffalo' : [{'name' : 'Buffalo1' , 'roads' : ['NYC']},
			{'name' : 'Detroit2' , 'roads' : ['CO']},
			{'name' : 'Cleveland1' , 'roads' : ['NYC' , 'PA']}],

	'Buffalo1' : [{'name' : 'Buffalo' , 'roads' : ['NYC']},
			{'name' : 'Buffalo2' , 'roads' : ['NYC']}],

	'Buffalo2' : [{'name' : 'Buffalo1' , 'roads' : ['NYC']},
			{'name' : 'Albany' , 'roads' : ['NYC']}],

	'Albany' : [{'name' : 'Albany1' , 'roads' : ['BM']},
			{'name' : 'Albany2' , 'roads' : ['NYC']},
			{'name' : 'Buffalo2' , 'roads' : ['NYC']}],

	'Albany1' : [{'name' : 'Albany' , 'roads' : ['BM']},
			{'name' : 'Boston' , 'roads' : ['BM']},
			{'name' : 'Portland ME1' , 'roads' : ['BM']}],

	'Albany2' : [{'name' : 'Albany' , 'roads' : ['NYC']},
			{'name' : 'New York' , 'roads' : ['NYC']}],

	'New York' : [{'name' : 'New York1' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Albany2' , 'roads' : ['NYC']},
			{'name' : 'Boston2' , 'roads' : ['NYNHH']}],

	'New York1' : [{'name' : 'New York' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Philadelphia' , 'roads' : ['BO' , 'PA']}],

	'Boston' : [{'name' : 'Boston1' , 'roads' : ['NYNHH']},
			{'name' : 'Albany1' , 'roads' : ['BM']},
			{'name' : 'Portland ME1' , 'roads' : ['BM']}],

	'Boston1' : [{'name' : 'Boston' , 'roads' : ['NYNHH']},
			{'name' : 'Boston2' , 'roads' : ['NYNHH']}],

	'Boston2' : [{'name' : 'Boston1' , 'roads' : ['NYNHH']},
			{'name' : 'New York' , 'roads' : ['NYNHH']}],

	'Portland ME' : [{'name' : 'Portland ME1' , 'roads' : ['BM']}],

	'Portland ME1' : [{'name' : 'Portland ME' , 'roads' : ['BM']},
			{'name' : 'Boston' , 'roads' : ['BM']},
			{'name' : 'Albany1' , 'roads' : ['BM']}],

	'Philadelphia' : [{'name' : 'New York1' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Baltimore' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Pittsburgh3' , 'roads' : ['PA']}],

	'Baltimore' : [{'name' : 'Philadelphia' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Washington DC' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Pittsburgh3' , 'roads' : ['PA']},
			{'name' : 'Pittsburgh6' , 'roads' : ['BO']}],

	'Washington DC' : [{'name' : 'Washington DC1' , 'roads' : ['SOU' , 'CO']},
			{'name' : 'Washington DC3' , 'roads' : ['RFP']},
			{'name' : 'Baltimore' , 'roads' : ['BO' , 'PA']},
			{'name' : 'Pittsburgh6' , 'roads' : ['BO']}],

	'Washington DC1' : [{'name' : 'Washington DC' , 'roads' : ['SOU' , 'CO']},
			{'name' : 'Washington DC2' , 'roads' : ['SOU' , 'CO']}],

	'Washington DC2' : [{'name' : 'Washington DC1' , 'roads' : ['SOU' , 'CO']},
			{'name' : 'Cincinnati11' , 'roads' : ['CO']},
			{'name' : 'Cincinnati15' , 'roads' : ['SOU']},
			{'name' : 'Richmond' , 'roads' : ['CO']}],

	'Washington DC3' : [{'name' : 'Washington DC' , 'roads' : ['RFP']},
			{'name' : 'Richmond' , 'roads' : ['RFP']}],

	'Pittsburgh' : [{'name' : 'Pittsburgh1' , 'roads' : ['PA']},
			{'name' : 'Pittsburgh4' , 'roads' : ['BO']},
			{'name' : 'Chicago7' , 'roads' : ['PA' , 'BO']},
			{'name' : 'Columbus1' , 'roads' : ['PA']}],

	'Pittsburgh1' : [{'name' : 'Pittsburgh' , 'roads' : ['PA']},
			{'name' : 'Pittsburgh2' , 'roads' : ['PA']}],

	'Pittsburgh2' : [{'name' : 'Pittsburgh1' , 'roads' : ['PA']},
			{'name' : 'Pittsburgh3' , 'roads' : ['PA']}],

	'Pittsburgh3' : [{'name' : 'Pittsburgh2' , 'roads' : ['PA']},
			{'name' : 'Philadelphia' , 'roads' : ['PA']},
			{'name' : 'Baltimore' , 'roads' : ['PA']}],

	'Pittsburgh4' : [{'name' : 'Pittsburgh' , 'roads' : ['BO']},
			{'name' : 'Pittsburgh5' , 'roads' : ['BO']}],

	'Pittsburgh5' : [{'name' : 'Pittsburgh4' , 'roads' : ['BO']},
			{'name' : 'Pittsburgh6' , 'roads' : ['BO']},
			{'name' : 'Cincinnati5' , 'roads' : ['BO']}],

	'Pittsburgh6' : [{'name' : 'Pittsburgh5' , 'roads' : ['BO']},
			{'name' : 'Baltimore' , 'roads' : ['BO']},
			{'name' : 'Washington DC' , 'roads' : ['BO']}],

# SOUTHEAST

	'Richmond' : [{'name' : 'Washington DC2' , 'roads' : ['CO']},
			{'name' : 'Washington DC3' , 'roads' : ['RFP']},
			{'name' : 'Norfolk1' , 'roads' : ['ACL' , 'SAL']}],

	'Norfolk' : [{'name' : 'Norfolk1' , 'roads' : ['NW']}],

	'Norfolk1' : [{'name' : 'Norfolk' , 'roads' : ['NW']},
			{'name' : 'Norfolk2' , 'roads' : ['ACL']},
			{'name' : 'Norfolk5' , 'roads' : ['SAL']}],

	'Norfolk2' : [{'name' : 'Norfolk1' , 'roads' : ['ACL']},
			{'name' : 'Norfolk3' , 'roads' : ['ACL']}],

	'Norfolk3' : [{'name' : 'Norfolk2' , 'roads' : ['ACL']},
			{'name' : 'Norfolk4' , 'roads' : ['ACL']}],

	'Norfolk4' : [{'name' : 'Norfolk3' , 'roads' : ['ACL']},
			{'name' : 'Charleston3' , 'roads' : ['ACL']}],

	'Norfolk5' : [{'name' : 'Norfolk1' , 'roads' : ['SAL']},
			{'name' : 'Norfolk6' , 'roads' : ['SAL']}],

	'Norfolk6' : [{'name' : 'Norfolk5' , 'roads' : ['SAL']},
			{'name' : 'Norfolk7' , 'roads' : ['SAL']}],

	'Norfolk7' : [{'name' : 'Norfolk6' , 'roads' : ['SAL']},
			{'name' : 'Norfolk8' , 'roads' : ['SAL']}],

	'Norfolk8' : [{'name' : 'Norfolk7' , 'roads' : ['SAL']},
			{'name' : 'Atlanta7' , 'roads' : ['SAL']},
			{'name' : 'Charleston3' , 'roads' : ['SAL']}],

	'Charleston' : [{'name' : 'Charleston1' , 'roads' : ['ACL']},
			{'name' : 'Charleston2' , 'roads' : ['SAL']},
			{'name' : 'Jacksonville2' , 'roads' : ['SAL', 'ACL']}],

	'Charleston1' : [{'name' : 'Charleston' , 'roads' : ['ACL']},
			{'name' : 'Charleston3' , 'roads' : ['ACL']}],

	'Charleston2' : [{'name' : 'Charleston' , 'roads' : ['SAL']},
			{'name' : 'Charleston3' , 'roads' : ['SAL']}],

	'Charleston3' : [{'name' : 'Charleston1' , 'roads' : ['ACL']},
			{'name' : 'Charleston2' , 'roads' : ['SAL']},
			{'name' : 'Norfolk4' , 'roads' : ['ACL']},
			{'name' : 'Norfolk8' , 'roads' : ['SAL']}],

	'Atlanta' : [{'name' : 'Atlanta1' , 'roads' : ['SOU']},
			{'name' : 'Atlanta4' , 'roads' : ['SAL']},
			{'name' : 'Chattanooga2' , 'roads' : ['SOU']},
			{'name' : 'Chattanooga3' , 'roads' : ['LN']},
			{'name' : 'Birmingham3' , 'roads' : ['SAL']},
			{'name' : 'Birmingham4' , 'roads' : ['SOU']},
			{'name' : 'Birmingham6' , 'roads' : ['ACL']}],

	'Atlanta1' : [{'name' : 'Atlanta' , 'roads' : ['SOU']},
			{'name' : 'Atlanta2' , 'roads' : ['SOU']}],

	'Atlanta2' : [{'name' : 'Atlanta1' , 'roads' : ['SOU']},
			{'name' : 'Atlanta3' , 'roads' : ['SOU']}],

	'Atlanta3' : [{'name' : 'Atlanta2' , 'roads' : ['SOU']},
			{'name' : 'Charlotte' , 'roads' : ['SOU']}],

	'Atlanta4' : [{'name' : 'Atlanta' , 'roads' : ['SAL']},
			{'name' : 'Atlanta5' , 'roads' : ['SAL']}],

	'Atlanta5' : [{'name' : 'Atlanta4' , 'roads' : ['SAL']},
			{'name' : 'Atlanta6' , 'roads' : ['SAL']}],

	'Atlanta6' : [{'name' : 'Atlanta5' , 'roads' : ['SAL']},
			{'name' : 'Atlanta7' , 'roads' : ['SAL']}],

	'Atlanta7' : [{'name' : 'Atlanta6' , 'roads' : ['SAL']},
			{'name' : 'Charlotte' , 'roads' : ['SAL']},
			{'name' : 'Norfolk8' , 'roads' : ['SAL']}],

	'Chattanooga' : [{'name' : 'Chattanooga1' , 'roads' : ['SOU']},
			{'name' : 'Chattanooga2' , 'roads' : ['SOU']},
			{'name' : 'Chattanooga3' , 'roads' : ['LN']},
			{'name' : 'Nashville4' , 'roads' : ['LN']},
			{'name' : 'Memphis11' , 'roads' : ['SOU']}],

	'Chattanooga1' : [{'name' : 'Chattanooga' , 'roads' : ['SOU']},
			{'name' : 'Knoxville' , 'roads' : ['SOU']}],

	'Chattanooga2' : [{'name' : 'Chattanooga' , 'roads' : ['SOU']},
			{'name' : 'Atlanta' , 'roads' : ['SOU']}],

	'Chattanooga3' : [{'name' : 'Chattanooga' , 'roads' : ['LN']},
			{'name' : 'Atlanta' , 'roads' : ['LN']},
			{'name' : 'Knoxville4' , 'roads' : ['LN']}],

	'Knoxville' : [{'name' : 'Knoxville1' , 'roads' : ['SOU']},
			{'name' : 'Knoxville4' , 'roads' : ['LN']},
			{'name' : 'Louisville4' , 'roads' : ['LN']},
			{'name' : 'Chattanooga1' , 'roads' : ['SOU']}],

	'Knoxville1' : [{'name' : 'Knoxville' , 'roads' : ['SOU']},
			{'name' : 'Knoxville2' , 'roads' : ['SOU']}],

	'Knoxville2' : [{'name' : 'Knoxville1' , 'roads' : ['SOU']},
			{'name' : 'Knoxville3' , 'roads' : ['NW']}],

	'Knoxville3' : [{'name' : 'Knoxville2' , 'roads' : ['NW']},
			{'name' : 'Cincinnati14' , 'roads' : ['NW']}],

	'Knoxville4' : [{'name' : 'Knoxville' , 'roads' : ['LN']},
			{'name' : 'Chattanooga3' , 'roads' : ['LN']}],

	'Charlotte' : [{'name' : 'Charlotte1' , 'roads' : ['SOU']},
			{'name' : 'Atlanta3' , 'roads' : ['SOU']},
			{'name' : 'Atlanta7' , 'roads' : ['SAL']}],

	'Charlotte1' : [{'name' : 'Charlotte' , 'roads' : ['SOU']},
			{'name' : 'Charlotte2' , 'roads' : ['SOU']}],

	'Charlotte2' : [{'name' : 'Charlotte1' , 'roads' : ['SOU']},
			{'name' : 'Cincinnati15' , 'roads' : ['SOU']}],

	'Mobile' : [{'name' : 'Mobile1' , 'roads' : ['LN']},
			{'name' : 'New Orleans3' , 'roads' : ['GMO']},
			{'name' : 'New Orleans6' , 'roads' : ['LN']}],

	'Mobile1' : [{'name' : 'Mobile' , 'roads' : ['LN']},
			{'name' : 'Mobile2' , 'roads' : ['LN']},
			{'name' : 'Mobile7' , 'roads' : ['LN']}],

	'Mobile2' : [{'name' : 'Mobile1' , 'roads' : ['LN']},
			{'name' : 'Mobile3' , 'roads' : ['LN']}],

	'Mobile3' : [{'name' : 'Mobile2' , 'roads' : ['LN']},
			{'name' : 'Mobile4' , 'roads' : ['SAL']},
			{'name' : 'Mobile5' , 'roads' : ['ACL']},
			{'name' : 'Birmingham' , 'roads' : ['LN']},
			{'name' : 'New Orleans5' , 'roads' : ['GMO']}],

	'Mobile4' : [{'name' : 'Mobile3' , 'roads' : ['SAL']},
			{'name' : 'Mobile6' , 'roads' : ['SAL']}],

	'Mobile5' : [{'name' : 'Mobile3' , 'roads' : ['ACL']},
			{'name' : 'Mobile6' , 'roads' : ['ACL']}],

	'Mobile6' : [{'name' : 'Mobile4' , 'roads' : ['SAL']},
			{'name' : 'Mobile5' , 'roads' : ['ACL']},
			{'name' : 'Mobile9' , 'roads' : ['SAL']},
			{'name' : 'Mobile10' , 'roads' : ['SAL']},
			{'name' : 'Mobile12' , 'roads' : ['ACL']},
			{'name' : 'Mobile13' , 'roads' : ['ACL']}],

	'Mobile7' : [{'name' : 'Mobile1' , 'roads' : ['LN']},
			{'name' : 'Mobile8' , 'roads' : ['LN']}],

	'Mobile8' : [{'name' : 'Mobile7' , 'roads' : ['LN']},
			{'name' : 'Mobile9' , 'roads' : ['LN']}],

	'Mobile9' : [{'name' : 'Mobile8' , 'roads' : ['LN']},
			{'name' : 'Mobile6' , 'roads' : ['SAL']},
			{'name' : 'Mobile10' , 'roads' : ['SAL']}],

	'Mobile10' : [{'name' : 'Mobile6' , 'roads' : ['ACL']},
			{'name' : 'Mobile9' , 'roads' : ['SAL']},
			{'name' : 'Mobile11' , 'roads' : ['SAL']},
			{'name' : 'Mobile12' , 'roads' : ['ACL']},
			{'name' : 'Mobile13' , 'roads' : ['ACL']},
			{'name' : 'Tampa2' , 'roads' : ['ACL']}],

	'Mobile11' : [{'name' : 'Mobile10' , 'roads' : ['SAL']},
			{'name' : 'Jacksonville' , 'roads' : ['SAL']}],

	'Mobile12' : [{'name' : 'Mobile6' , 'roads' : ['ACL']},
			{'name' : 'Mobile10' , 'roads' : ['ACL']},
			{'name' : 'Mobile13' , 'roads' : ['ACL']},
			{'name' : 'Birmingham8' , 'roads' : ['ACL']}],

	'Mobile13' : [{'name' : 'Mobile6' , 'roads' : ['ACL']},
			{'name' : 'Mobile10' , 'roads' : ['ACL']},
			{'name' : 'Mobile12' , 'roads' : ['ACL']},
			{'name' : 'Birmingham7' , 'roads' : ['ACL']}],

	'Jacksonville' : [{'name' : 'Jacksonville1' , 'roads' : ['SAL']},
			{'name' : 'Tampa2' , 'roads' : ['ACL']},
			{'name' : 'Tampa3' , 'roads' : ['SAL']},
			{'name' : 'Mobile11' , 'roads' : ['SAL']},
			{'name' : 'Birmingham8' , 'roads' : ['ACL']}],

	'Jacksonville1' : [{'name' : 'Jacksonville' , 'roads' : ['SAL']},
			{'name' : 'Jacksonville2' , 'roads' : ['SAL']}],

	'Jacksonville2' : [{'name' : 'Jacksonville1' , 'roads' : ['SAL']},
			{'name' : 'Charleston' , 'roads' : ['SAL', 'ACL']},
			{'name' : 'Birmingham8' , 'roads' : ['ACL']}],

	'Tampa' : [{'name' : 'Tampa1' , 'roads' : ['ACL', 'SAL']}],

	'Tampa1' : [{'name' : 'Tampa' , 'roads' : ['ACL' , 'SAL']},
			{'name' : 'Tampa2' , 'roads' : ['ACL']},
			{'name' : 'Tampa3' , 'roads' : ['SAL']},
			{'name' : 'Miami3' , 'roads' : ['SAL']}],

	'Tampa2' : [{'name' : 'Tampa1' , 'roads' : ['ACL']},
			{'name' : 'Jacksonville' , 'roads' : ['ACL']},
			{'name' : 'Mobile10' , 'roads' : ['ACL']}],

	'Tampa3' : [{'name' : 'Tampa1' , 'roads' : ['SAL']},
			{'name' : 'Jacksonville' , 'roads' : ['SAL']}],

	'Miami' : [{'name' : 'Miami1' , 'roads' : ['SAL']}],

	'Miami1' : [{'name' : 'Miami' , 'roads' : ['SAL']},
			{'name' : 'Miami2' , 'roads' : ['SAL']}],

	'Miami2' : [{'name' : 'Miami1' , 'roads' : ['SAL']},
			{'name' : 'Miami3' , 'roads' : ['SAL']}],

	'Miami3' : [{'name' : 'Miami2' , 'roads' : ['SAL']},
			{'name' : 'Tampa1' , 'roads' : ['SAL']}]

}


# { 'name' : '' , 'roads' : [] },



# Railroad colors and other info
var railRoads = [
	{ 'callsign' : 'SP' , 'color' : 'hotpink' , 'price' : 42, 'name' : 'Southern Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'ATSF' , 'color' : 'antiquewhite' , 'price' : 40, 'name' : 'Atchison, Topeka and Santa Fe', "owned" : false, 'owner' : null},
	{ 'callsign' : 'UP' , 'color' : 'aqua' , 'price' : 40, 'name' : 'Union Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'PA' , 'color' : 'aquamarine', 'price' : 30, 'name' : 'Pennsylvania', "owned" : false, 'owner' : null},
	{ 'callsign' : 'CRIP' , 'color' : 'azure' , 'price' : 29, 'name' : 'Chicago, Rock Island and Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'NYC' , 'color' : 'beige' , 'price' : 28, 'name' : 'New York Central', "owned" : false, 'owner' : null},
	{ 'callsign' : 'BO' , 'color' : 'bisque' , 'price' : 24, 'name' : 'Baltimore and Ohio', "owned" : false, 'owner' : null},
	{ 'callsign' : 'MP' , 'color' : 'black' , 'price' : 21, 'name' : 'Missouri Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'CO' , 'color' : 'blanchedalmond' , 'price' : 20, 'name' : 'Chesapeake and Ohio', "owned" : false, 'owner' : null},
	{ 'callsign' : 'SOU' , 'color' : 'blue' , 'price' : 20, 'name' : 'Southern Railway', "owned" : false, 'owner' : null},
	{ 'callsign' : 'CBQ' , 'color' : 'blueviolet' , 'price' : 20, 'name' : 'Chicago, Burlington and Quincy', "owned" : false, 'owner' : null},
	{ 'callsign' : 'SLSF' , 'color' : 'brown' , 'price' : 19, 'name' : 'St. Louis and San Francisco', "owned" : false, 'owner' : null},
	{ 'callsign' : 'LN' , 'color' : 'burlywood' , 'price' : 18, 'name' : 'Louisville and Nashville', "owned" : false, 'owner' : null},
	{ 'callsign' : 'CMSTPP' , 'color' : 'cadetblue' , 'price' : 18, 'name' : 'Chicago, Milwaukee, St. Paul and Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'GN' , 'color' : 'chartreuse' , 'price' : 17, 'name' : 'Great Northern', "owned" : false, 'owner' : null},
	{ 'callsign' : 'SAL' , 'color' : 'chocolate' , 'price' : 14, 'name' : 'Seaboard Airline', "owned" : false, 'owner' : null},
	{ 'callsign' : 'IC' , 'color' : 'coral' , 'price' : 14, 'name' : 'Illinois Central', "owned" : false, 'owner' : null},
	{ 'callsign' : 'CNW' , 'color' : 'cornflower' , 'price' : 14, 'name' : 'Chicago and Northwestern', "owned" : false, 'owner' : null},
	{ 'callsign' : 'NP' , 'color' : 'cornsilk' , 'price' : 14, 'name' : 'Northern Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'ACL' , 'color' : 'crimson' , 'price' : 12, 'name' : 'Atlantic Coast Line', "owned" : false, 'owner' : null},
	{ 'callsign' : 'NW' , 'color' : 'cyan' , 'price' : 12, 'name' : 'Norfolk and Western', "owned" : false, 'owner' : null},
	{ 'callsign' : 'GMO' , 'color' : 'darkblue' , 'price' : 12, 'name' : 'Gulf, Mobile and Ohio', "owned" : false, 'owner' : null},
	{ 'callsign' : 'TP' , 'color' : 'darkcyan' , 'price' : 10, 'name' : 'Texas Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'WP' , 'color' : 'darkgoldenrod' , 'price' : 8, 'name' : 'Western Pacific', "owned" : false, 'owner' : null},
	{ 'callsign' : 'DRGW' , 'color' : 'darkgray' , 'price' : 6, 'name' : 'Denver and Rio Grande Western', "owned" : false, 'owner' : null},
	{ 'callsign' : 'BM' , 'color' : 'darkgreen' , 'price' : 4, 'name' : 'Boston and Maine', "owned" : false, 'owner' : null},
	{ 'callsign' : 'NYNHH' , 'color' : 'darkkhaki' , 'price' : 4, 'name' : 'New York, New Haven and Hartford', "owned" : false, 'owner' : null},
	{ 'callsign' : 'RFP' , 'color' : 'darkmagenta' , 'price' : 4, 'name' : 'Richmond, Fredericksburg and Potomac', "owned" : false, 'owner' : null}
]

var payoutChart = [['-', '10.0', '3.5', '21.0', '11.0', '2.0', '3.0', '23.5', '18.0', '9.5', '7.5', '10.0', '8.0', '7.0', '5.0', '6.0', '17.0', '18.5', '12.0', '5.5',
'22.0', '14.5', '17.0', '18.5', '7.5', '11.0', '12.5', '8.5', '28.0', '13.5', '30.5', '8.5', '12.5', '15.0', '9.0', '12.5', '13.5', '10.5', '15.0', '1.5', '6.0', '15.5', '13.0', '2.5', '27.5', '5.5', '23.5', '3.0', '30.0', '18.5', '17.0', '25.5', '5.0', '27.0', '23.5', '19.5', '31.5', '31.0', '31.5', '16.0', '26.5', '10.0', '13.5', '18.5', '3.5'], ['10.0', '-', '7.0', '19.0', '1.5', '11.0', '9.5', '21.5', '25.5', '3.0', '2.5', '1.5', '7.5', '5.0', '7.5', '6.0', '8.0', '15.5', '9.5', '7.5', '14.5', '13.5', '8.0', '8.5', '6.0', '3.5', '9.0', '2.0', '23.0', '5.5', '23.0', '4.5', '4.0', '7.0', '8.0', '11.5', '3.5', '3.0', '5.0', '8.5', '5.5', '9.0', '10.0', '7.5', '19.0', '8.0', '21.0', '12.0', '28.0', '15.0', '16.0', '26.0', '6.0', '27.0', '20.5', '10.5', '22.5', '27.0', '28.0', '6.5', '28.0', '6.0', '5.5', '13.0', '6.5'], ['3.5', '7.0', '-', '21.0', '8.0', '4.0', '4.0', '23.0', '18.0', '5.5', '4.0', '6.5', '8.0', '6.0', '4.5', '5.0', '14.5', '18.0', '11.5', '6.0', '21.0', '14.5', '14.5', '15.0', '7.0', '8.0', '12.0', '5.5', '27.5', '11.0', '29.0', '7.0', '9.5', '11.5', '8.0', '12.0', '10.5', '7.5', '11.5', '2.0', '2.5', '14.5', '13.0', '1.0', '27.0', '3.5', '23.5', '5.5', '30.5', '18.0', '17.0', '28.5', '1.5', '30.0', '23.0', '17.0', '28.5', '30.5', '29.5', '12.5', '26.5', '9.0', '10.0', '18.5', '0.5'], ['21.0', '19.0', '21.0', '-', '18.0', '23.0', '18.0', '2.5', '3.5', '22.5', '21.0', '18.0', '13.0', '15.5', '16.0', '16.0', '15.0', '6.5', '10.5', '15.5', '14.0', '6.5', '15.0', '17.5', '14.5', '22.5', '10.5', '18.5', '11.0', '15.5', '14.5', '16.0', '15.5', '26.0', '12.0', '9.0', '19.0', '16.5', '19.0', '22.0', '22.0', '14.0', '9.0', '21.0', '19.0', '17.5', '5.0', '24.0', '9.5', '7.5', '5.0', '12.0', '21.5', '13.5', '6.5', '17.5', '15.5', '14.0', '9.0', '16.0', '6.0', '13.0', '24.0', '11.0', '20.5'], ['11.0', '1.5', '8.0', '18.0', '-', '12.0', '9.0', '20.0', '14.0', '5.0', '4.0', '1.5', '6.5', '5.0', '7.5', '6.0', '6.5', '13.5', '8.0', '7.5', '13.0', '13.0', '6.5', '7.0', '5.0', '4.5', '7.5', '2.5', '23.5', '4.0', '21.0', '4.0', '2.5', '8.0', '7.5', '10.5', '3.0', '2.0', '3.5', '10.0', '7.0', '7.5', '9.0', '9.0', '17.5', '8.0', '20.5', '13.5', '26.5', '13.5', '14.5', '23.0', '7.5', '24.0', '19.0', '9.5', '21.0', '25.5', '27.0', '4.5', '24.0', '5.0', '6.0', '11.5', '7.5'], ['2.0', '11.0', '4.0', '23.0', '12.0', '-', '5.0', '25.5', '20.0', '9.5',
'8.5', '11.5', '10.0', '9.5', '7.0', '8.0', '18.5', '20.5', '14.0', '7.5', '24.0', '16.5', '19.5', '19.5', '9.5', '12.0', '14.5', '9.5', '30.0', '15.0', '32.5', '10.5', '14.0', '16.0', '11.0', '14.0', '14.5', '12.0', '15.5', '2.5', '7.0', '17.5', '15.0', '3.0', '29.5', '6.5', '25.5', '1.0', '32.0', '21.0', '20.5', '30.5', '5.5', '32.0', '25.5', '21.0', '32.5', '33.0', '31.5', '16.5', '28.5', '12.0', '14.0', '21.0', '4.5'], ['3.0', '9.5', '4.0', '18.0', '9.0', '5.0', '-', '20.5', '15.0', '9.5', '8.0', '8.0', '5.0', '4.5', '2.0', '3.0', '14.0', '15.5', '9.0', '2.5', '19.0', '11.5', '14.0', '15.5', '4.5', '12.0', '9.5', '7.5', '25.0', '10.5', '27.5', '5.5', '9.5', '15.5', '6.0', '9.0', '12.0', '7.5', '13.0', '4.0', '6.5', '12.5', '10.0',
'4.0', '24.5', '2.5', '20.5', '6.0', '27.0', '15.5', '14.0', '25.5', '5.5', '27.0', '20.5', '16.5', '27.0', '28.0', '26.5', '14.0', '23.5', '7.0', '14.0', '16.5', '4.5'], ['23.5', '21.5', '23.0', '2.5', '20.0', '25.5', '20.5', '-', '5.5', '26.0', '17.5', '14.0', '15.0', '18.0', '18.5', '18.5', '17.5', '9.0', '14.0', '18.0', '16.0', '9.0', '17.5', '20.0', '17.0', '24.5', '13.0', '21.0', '9.0', '18.0', '12.0', '18.0', '17.5', '28.5', '14.5', '11.0', '21.0', '18.5', '21.5', '24.0', '25.0', '16.5', '11.5', '23.5', '16.5', '20.0', '2.5', '26.5', '7.0', '10.0', '7.5', '9.5', '23.5', '11.0', '4.5', '19.5', '13.0', '12.0', '6.5', '18.5', '3.5', '15.5', '26.5', '13.5', '22.5'], ['18.0', '25.5', '18.0', '3.5', '14.0', '20.0', '15.0', '5.5', '-', '19.0', '17.5', '14.0', '10.0', '12.5', '13.5', '13.0', '11.5', '3.5', '6.5', '12.5', '9.5', '7.5', '11.5', '14.5', '11.5', '18.5', '7.0', '14.5', '12.0', '11.5', '15.0', '12.0', '12.0', '22.0', '10.0', '8.0', '15.5', '12.5', '15.5', '19.0', '19.0', '10.5', '5.0', '18.0', '14.0', '14.5', '7.5', '21.5', '13.0', '4.5', '3.0', '12.5', '18.5', '14.0', '7.5', '14.0', '16.5', '15.0', '12.5', '12.5', '9.0', '10.0', '15.0', '8.0', '17.5'], ['9.5', '3.0', '5.5', '22.5', '5.0', '9.5', '9.5', '26.0', '19.0', '-', '2.5', '4.5', '10.0', '7.0', '9.5', '8.5', '11.5', '18.5', '13.0', '10.0', '19.0', '16.5', '11.5', '11.5', '8.0', '2.5', '12.0', '4.0', '26.5', '8.5', '26.0', '7.0', '7.5', '6.0', '11.0', '14.0', '6.0', '6.0', '7.5', '7.5', '4.5', '12.0', '13.5', '8.0', '22.5', '8.0', '24.0', '11.0', '31.0', '18.5', '19.0', '29.5', '4.0', '31.0', '23.5', '13.5', '26.0', '30.5', '31.5', '9.5', '28.0', '9.0', '4.5', '16.0', '5.0'], ['7.5', '2.5', '4.0', '21.0', '4.0', '8.5', '8.0', '17.5', '17.5', '2.5', '-', '4.0', '8.5', '5.5', '6.5', '6.0', '11.0', '18.0', '11.5', '8.0', '17.5', '15.0', '11.0', '11.0', '6.5', '4.0', '11.0', '2.5', '26.0', '8.5', '25.5', '5.5', '7.0', '7.5', '9.5', '12.5', '6.0', '5.0', '7.5', '6.0', '4.0', '11.5', '12.5', '5.0', '24.0', '6.0', '23.0', '9.5', '30.5', '18.0', '18.0', '27.5', '3.5', '29.0', '22.5', '13.5', '25.5', '30.0', '30.0', '9.0', '27.0', '8.0', '6.0', '15.5', '4.0'], ['10.0', '1.5', '6.5', '18.0', '1.5', '11.5', '8.0', '14.0', '14.0', '4.5', '4.0', '-', '6.0', '3.5', '6.0', '4.5', '9.0', '14.0', '8.0', '6.0', '15.5', '12.5', '9.0', '8.5', '4.5', '5.0', '7.5', '1.0', '24.0', '5.5', '23.5', '3.0', '4.0', '8.5', '7.0', '10.0', '5.0', '1.5', '6.5', '8.5', '6.5', '9.0', '9.0', '7.5', '19.0', '7.0', '21.5', '12.0', '26.5', '14.0', '14.5', '24.5', '6.0', '26.0', '20.5', '10.5', '23.5', '27.0', '27.0', '7.0', '18.5', '4.5', '2.0', '13.0', '6.0'], ['8.0', '7.5', '8.0', '13.0', '6.5', '10.0',
'5.0', '15.0', '10.0', '10.0', '8.5', '6.0', '-', '3.0', '3.5', '3.5', '9.5', '10.5', '3.5', '2.5', '14.0', '6.5', '9.5', '12.0', '2.0', '11.0', '4.5', '5.5', '19.5', '6.5', '22.5', '3.0', '5.5', '14.5', '1.0', '4.0', '8.5', '4.5', '9.0', '9.0', '9.5', '8.0', '5.0', '8.0', '19.5', '4.5', '15.0', '11.5', '22.0', '10.5', '9.0', '20.0', '8.5', '22.0', '15.0', '12.0', '22.0', '22.5', '21.5', '8.5', '18.5', '3.0', '12.5', '11.0', '7.5'], ['7.0', '5.0', '6.0', '15.5', '5.0', '9.5', '4.5', '18.0', '12.5', '7.0', '5.5', '3.5', '3.0', '-', '2.5', '1.0', '9.5', '12.5', '6.5', '2.5', '15.5', '9.0', '9.5', '12.5', '1.0', '8.5', '6.0', '3.0', '22.5', '6.5', '23.5', '1.0', '5.0', '12.0', '3.5', '7.0', '7.5', '3.0', '8.5', '7.5', '7.0', '9.0', '7.5', '6.5', '21.0', '3.0', '18.0', '10.5', '24.5', '12.5', '12.0', '23.0', '6.0', '24.5', '18.0', '12.5', '23.5', '25.5', '24.0', '8.5', '21.0', '3.5', '10.0', '12.5', '5.5'], ['5.0', '7.5', '4.5', '16.0', '7.5', '7.0', '2.0', '18.5', '13.5', '9.5', '6.5', '6.0', '3.5', '2.5', '-', '1.5', '12.5', '13.5', '7.0', '1.5', '17.5', '10.0', '12.5', '13.5', '3.0', '11.0', '8.0', '5.5', '23.0', '9.0', '25.5', '3.5', '7.0', '14.5', '4.0', '7.5', '10.0', '5.5', '11.0', '5.5', '6.5', '10.5', '8.5', '5.0', '22.5', '1.5', '19.0', '8.0', '25.5', '13.5', '12.5', '23.5', '5.5', '25.0', '18.5', '14.5', '25.0',
'26.0', '25.0', '11.0', '21.5', '5.0', '12.5', '14.5', '4.5'], ['6.0', '6.0', '5.0', '16.0', '6.0', '8.0', '3.0', '18.5', '13.0', '8.5', '6.0', '4.5', '3.5', '1.0', '1.5', '-', '11.0', '13.0', '7.0', '2.0', '17.0', '9.5', '11.0', '13.0', '1.5', '9.5', '6.5', '4.0', '22.5', '6.5', '24.0', '2.5', '6.0', '13.0', '4.0', '7.5', '8.0', '4.0', '9.5', '6.5', '7.0', '10.0', '8.0', '5.5', '21.5', '2.0', '18.5', '9.5', '25.5', '13.0', '13.5', '23.5', '5.5', '25.0', '18.0', '13.5', '24.0', '26.5', '25.0', '11.5', '21.5', '4.0', '11.5', '14.0', '5.0'], ['17.0', '8.0', '14.5', '15.0', '6.5', '18.5', '14.0', '17.5', '11.5', '11.5', '11.0', '9.0', '9.5', '9.5', '12.5', '11.0', '-', '8.5', '7.5', '12.0', '6.5', '12.5', '0.5', '2.5', '9.5', '11.0', '5.0', '9.0', '15.0', '3.5', '14.5', '8.5', '9.0', '14.5', '10.5', '10.0', '6.0', '7.0', '5.0', '16.0', '14.0', '2.5', '7.0', '15.5', '11.0', '13.0', '15.0', '19.5', '22.5', '7.5', '12.5', '19.0', '14.0', '19.5', '13.5', '2.5', '14.5', '19.5', '24.0', '2.0', '21.0', '7.0', '12.5', '5.0', '14.0'], ['18.5', '15.5', '18.0', '6.5', '13.5', '20.5', '15.5', '9.0', '3.5', '18.5', '18.0', '14.0', '10.5', '12.5', '13.5', '13.0', '8.5', '-', '7.0', '13.0',
'7.5', '11.5', '8.5', '11.0', '11.5', '18.0', '6.5', '14.5', '10.0', '11.0', '13.5', '12.0', '11.0', '22.0', '10.5', '9.0', '15.0', '12.5', '13.5', '19.5', '19.0', '7.5', '5.5', '18.5', '10.5', '15.0', '6.0', '21.5', '13.5', '1.0', '5.5', '11.5', '18.5', '13.0', '5.5', '11.0', '14.5', '13.5', '15.5', '10.0', '12.5', '9.0', '20.0', '4.5', '18.0'], ['12.0', '9.5', '11.5', '10.5', '8.0', '14.0', '9.0', '14.0', '6.5', '13.0', '11.5', '8.0', '3.5', '6.5', '7.0', '7.0', '7.5', '7.0', '-', '6.5', '11.5', '5.0', '7.5', '10.0', '5.5', '13.0', '2.0', '9.0', '16.0', '7.0', '19.5', '6.0', '6.5', '16.5', '3.5', '2.5', '10.0', '6.5', '10.5', '12.5', '13.0', '5.5', '1.5', '11.5', '17.0', '8.5', '12.0', '15.0', '19.0', '7.0', '7.0', '17.0', '12.0', '18.0', '11.5', '10.0', '20.5', '19.0', '19.5', '8.0', '16.5', '3.5', '14.5', '9.0', '11.0'], ['5.5', '7.5', '6.0', '15.5', '7.5', '7.5', '2.5', '18.0', '12.5', '10.0', '8.0', '6.0', '2.5', '2.5', '1.5', '2.0', '12.0', '13.0', '6.5', '-', '16.5', '9.0', '12.0', '13.5', '3.0', '11.0', '7.0', '5.0', '22.5', '9.0', '25.0', '3.5', '7.5', '14.5', '3.5', '6.5', '10.0', '5.5', '11.5', '6.5', '8.0', '10.5', '7.5', '6.5', '22.0', '3.0', '18.0', '8.5', '25.0', '13.0', '13.0', '23.0', '7.0', '24.5', '18.0', '14.0', '24.5', '25.5', '24.0', '10.5', '21.0', '5.0', '12.5', '14.0', '6.0'], ['22.0', '14.5',
'21.0', '14.0', '13.0', '24.0', '19.0', '16.0', '9.5', '19.0', '17.5', '15.5', '14.0', '15.5', '17.5', '17.0', '6.5', '7.5', '11.5', '16.5', '-', '16.5', '6.5', '8.5', '15.0', '17.5', '9.5', '15.5', '13.0', '10.0', '8.0', '15.0', '11.5', '21.5', '14.5', '14.0', '13.0', '13.5', '11.5', '23.0', '21.0', '7.0', '11.5', '22.0', '4.5', '18.5', '13.5', '25.5', '20.0', '6.0', '13.0', '10.5', '20.5', '12.0', '12.5', '6.0', '8.0', '13.0', '22.0', '8.5', '20.0', '12.0', '19.5', '3.5', '20.5'], ['14.5', '13.5', '14.5', '6.5', '13.0', '16.5', '11.5', '9.0', '7.5', '16.5', '15.0', '12.5', '6.5', '9.0',
'10.0', '9.5', '12.5', '11.5', '5.0', '9.0', '16.5', '-', '12.5', '15.0', '8.0', '17.0', '7.0', '12.0', '17.5', '12.0', '21.0', '9.5', '11.0', '21.0', '5.5', '2.5', '14.5', '11.0', '15.0', '15.5', '16.0', '10.5', '6.0', '14.5', '22.0', '11.0', '13.5', '17.5', '16.0', '12.5', '4.5', '15.0', '15.0', '20.0', '13.0', '15.0', '22.0', '20.5', '15.0', '13.0', '12.0', '8.0', '19.0', '14.0', '14.0'], ['17.0', '8.0', '14.5', '15.0', '6.5', '19.5', '14.0', '17.5', '11.5', '11.5', '11.0', '9.0', '9.5', '9.5', '12.5', '11.0', '0.5', '8.5', '7.5', '12.0', '6.5', '12.5', '-', '2.5', '9.5', '11.0', '5.0', '9.0', '16.0', '4.0', '14.5', '8.5', '9.0', '14.5', '10.5', '10.0', '6.0', '7.0', '5.0', '16.5', '14.0', '2.5', '7.0', '15.5', '11.0', '13.0', '15.0', '20.5', '22.5', '7.5', '12.5', '19.0', '14.0', '19.5', '13.5', '2.5', '14.5', '19.5', '24.0', '2.0', '21.0', '7.0', '12.5', '5.0', '14.0'], ['18.5', '8.5', '15.0', '17.5', '7.0', '19.5', '15.5', '20.0', '14.5', '11.5', '11.0', '8.5', '12.0', '12.5', '13.5', '13.0', '2.5', '11.0', '10.0', '13.5', '8.5', '15.0', '2.5', '-', '11.0', '9.5', '8.0', '9.5', '17.0', '4.5', '16.5', '10.0', '6.0', '13.5', '11.0', '12.5', '5.0', '8.5', '3.5', '17.0',
'14.5', '5.0', '9.5', '16.0', '13.0', '14.5', '17.5', '20.5', '25.0', '10.0', '15.5', '22.0', '14.5', '21.0', '16.0', '2.0', '16.0', '21.0', '26.5',
'2.5', '23.5', '9.0', '11.5', '8.0', '15.0'], ['7.5', '6.0', '7.0', '14.5', '5.0', '9.5', '4.5', '17.0', '11.5', '8.0', '6.5', '4.5', '2.0', '1.0', '3.0', '1.5', '9.5', '11.5', '5.5', '3.0', '15.0', '8.0', '9.5', '11.0', '-', '9.5', '5.0', '4.0', '21.5', '5.0', '22.5', '1.0', '5.0', '13.0', '2.5', '6.0', '8.0', '3.0', '8.5', '8.0', '8.0', '7.5', '6.5', '7.0', '20.0', '3.5', '17.0', '10.5', '24.5', '11.5', '11.0', '22.0', '7.0', '23.5', '17.0', '11.5', '22.5', '24.5', '23.0', '9.0', '20.0', '2.5', '11.0', '11.5', '6.5'], ['11.0', '3.5', '8.0', '22.5', '4.5', '12.0', '12.0', '24.5', '18.5',
'2.5', '4.0', '5.0', '11.0', '8.5', '11.0', '9.5', '11.0', '18.0', '13.0', '11.0', '17.5', '17.0', '11.0', '9.5', '9.5', '-', '11.5', '5.5', '26.0',
'8.0', '26.0', '8.0', '7.0', '3.0', '11.5', '15.0', '4.0', '6.5', '6.0', '10.0', '6.0', '12.0', '13.5', '9.0', '22.0', '10.5', '23.5', '13.0', '31.5', '18.0', '19.0', '27.5', '6.5', '29.0', '23.5', '12.0', '25.5', '30.0', '31.5', '9.0', '28.0', '9.0', '2.0', '16.0', '6.0'], ['12.5', '9.0', '12.0', '10.5', '7.5', '14.5', '9.5', '13.0', '7.0', '12.0', '11.0', '7.5', '4.5', '6.0', '8.0', '6.5', '5.0', '6.5', '2.0', '7.0', '9.5', '7.0', '5.0', '8.0', '5.0', '11.5', '-', '8.0', '16.5', '5.0', '17.5', '5.5', '5.0', '15.5', '5.5', '5.0', '8.5', '6.0', '8.5', '13.5', '13.0', '3.5', '2.0', '12.0',
'15.0', '9.0', '12.5', '16.0', '19.5', '6.0', '7.5', '17.5', '12.0', '19.0', '12.0', '8.0', '17.5', '19.5', '19.5', '5.5', '16.5', '3.0', '13.5', '6.5', '11.5'], ['8.5', '2.0', '5.5', '18.5', '2.5', '9.5', '7.5', '21.0', '14.5', '4.0', '2.5', '1.0', '5.5', '3.0', '5.5', '4.0', '9.0', '14.5', '9.0', '5.0', '15.5', '12.0', '9.0', '9.5', '4.0', '5.5', '8.0', '-', '24.5', '5.5', '23.5', '3.0', '4.0', '9.0', '6.5', '9.5', '5.5', '2.0', '6.0', '7.5', '5.5', '9.0', '9.5', '6.5', '21.5', '6.0', '20.5', '10.5', '27.5', '14.5', '15.0', '25.0', '5.0', '26.5', '20.0', '11.5', '23.5', '27.0', '27.0', '8.0', '24.0', '5.5', '7.0', '13.0', '5.0'], ['28.0', '23.0', '27.5', '11.0', '23.5', '30.0', '25.0', '9.0', '12.0', '26.5', '26.0', '24.0', '19.5', '22.5', '23.0', '22.5', '15.0', '10.0', '16.0', '22.5', '13.0', '17.5', '16.0', '17.0', '21.5', '26.0', '16.5', '24.5', '-', '19.0', '3.0', '21.5', '21.0', '30.0', '19.5', '18.0', '21.5', '22.0', '20.0', '28.0', '29.0', '15.5', '15.0', '28.0', '7.5', '24.5', '6.0', '26.0', '13.5', '11.0', '14.0', '8.0', '28.0', '6.5', '4.5', '14.5', '4.5', '6.5', '15.0', '17.0', '17.0', '19.0', '28.5', '9.5', '27.5'], ['13.5', '5.5', '11.0', '15.5', '4.0', '15.0', '10.5', '18.0', '11.5', '8.5', '8.5', '5.5', '6.5', '6.5', '9.0', '6.5', '3.5', '11.0', '7.0', '9.0', '10.0', '12.0', '4.0', '4.5', '5.0', '8.0', '5.0', '5.5', '19.0', '-', '18.5', '5.0', '1.5', '11.5', '7.5', '9.5', '5.0', '3.5', '4.5', '13.0', '11.0', '3.5', '7.0', '12.0', '16.0', '9.5', '16.0', '18.0', '24.5', '10.0', '12.5', '21.5', '10.5', '21.5', '16.0', '6.0', '18.0', '21.5', '26.5', '2.0', '23.0', '3.5', '9.5', '7.5', '10.5'], ['30.5', '23.0', '29.0', '14.5', '21.0', '32.5', '27.5', '12.0', '15.0', '26.0', '25.5', '23.5', '22.5', '23.5', '25.5', '24.0', '14.5', '13.5', '19.5',
'25.0', '8.0', '21.0', '14.5', '16.5', '22.5', '26.0', '17.5', '23.5', '3.0', '18.5', '-', '23.0', '19.5', '29.5', '22.5', '21.5', '21.0', '22.0', '19.5', '31.0', '29.5', '15.0', '18.0', '30.0', '4.5', '26.5', '9.0', '33.5', '12.0', '13.5', '17.5', '6.0', '28.5', '5.0', '8.0', '14.5', '1.5', '4.5', '13.5', '16.5', '15.5', '20.5', '27.5', '11.5', '29.0'], ['8.5', '4.5', '7.0', '16.0', '4.0', '10.5', '5.5', '18.0', '12.0', '7.0', '5.5', '3.0', '3.0', '1.0', '3.5', '2.5', '8.5', '12.0', '6.0', '3.5', '15.0', '9.5', '8.5', '10.0', '1.0', '8.0', '5.5', '3.0', '21.5', '5.0', '23.0', '-', '4.0',
'12.0', '4.0', '7.0', '5.5', '2.0', '7.5', '8.5', '8.0', '8.5', '7.0', '8.0', '22.5', '4.5', '17.5', '11.5', '24.5', '12.0', '12.5', '22.5', '7.0', '24.0', '17.0', '11.5', '22.5', '24.5', '25.0', '8.0', '22.0', '2.5', '10.0', '12.0', '6.5'], ['12.5', '4.0', '9.5', '15.5', '2.5', '14.0', '9.5', '17.5', '12.0', '7.5', '7.0', '4.0', '5.5', '5.0', '7.0', '6.0', '9.0', '11.0', '6.5', '7.5', '11.5', '11.0', '9.0', '6.0', '5.0', '7.0', '5.0', '4.0',
'21.0', '1.5', '19.5', '4.0', '-', '10.5', '6.0', '9.0', '3.5', '2.5', '4.0', '11.5', '9.5', '5.0', '6.5', '10.5', '17.5', '8.0', '17.0', '15.0', '25.0', '11.0', '12.5', '20.5', '9.0', '22.0', '16.5', '7.5', '19.0', '23.0', '24.5', '4.0', '21.5', '3.0', '8.5', '8.5', '9.5'], ['15.0', '7.0', '11.5', '26.0', '8.0', '16.0', '15.5', '28.5', '22.0', '6.0', '7.5', '8.5', '14.5', '12.0', '14.5', '13.0', '14.5', '22.0', '16.5', '14.5', '21.5', '21.0', '14.5', '13.5', '13.0', '3.0', '15.5', '9.0', '30.0', '11.5', '29.5', '12.0', '10.5', '-', '15.5', '18.5', '8.5', '10.0', '10.0', '13.5', '9.5', '15.5', '17.0', '12.5', '26.0', '14.0', '27.5', '17.0', '35.0', '21.5', '22.5', '33.0', '10.0', '33.5', '27.0', '15.5', '29.0', '33.5', '35.0', '12.5',
'32.0', '13.0', '2.0', '19.5', '11.0'], ['9.0', '8.0', '8.0', '12.0', '7.5', '11.0', '6.0', '14.5', '10.0', '11.0', '9.5', '7.0', '1.0', '3.5', '4.0', '4.0', '10.5', '10.5', '3.5', '3.5', '14.5', '5.5', '10.5', '11.0', '2.5', '11.5', '5.5', '6.5', '19.5', '7.5', '22.5', '4.0', '6.0', '15.5', '-',
'3.5', '9.0', '5.5', '10.0', '10.0', '10.5', '8.5', '5.0', '9.0', '19.5', '5.5', '15.5', '12.0', '21.5', '11.5', '9.0', '20.5', '9.5', '22.0', '15.0', '13.0', '23.0', '22.5', '21.0', '8.5', '18.0', '3.5', '13.5', '11.0', '8.5'], ['12.5', '11.5', '12.0', '9.0', '10.5', '14.0', '9.0', '11.0', '8.0', '14.0', '12.5', '10.0', '4.0', '7.0', '7.5', '7.5', '10.0', '9.0', '2.5', '6.5', '14.0', '2.5', '10.0', '12.5', '6.0', '15.0', '5.0', '9.5', '18.0', '9.5', '21.5', '7.0', '9.0', '18.5', '3.5', '-', '12.5', '8.5', '12.5', '13.0', '13.5', '8.0', '3.5', '12.0', '19.5', '8.5', '13.5', '15.5', '18.0', '9.5', '5.0', '19.0', '12.5', '20.5', '13.5', '12.5', '22.5', '21.0', '17.5', '10.5', '14.5', '5.5', '16.5', '11.5', '11.5'], ['13.5', '3.5', '10.5', '19.0', '3.0', '14.5', '12.0', '21.0', '15.5', '6.0', '6.0', '5.0', '8.5', '7.5', '10.0', '8.0', '6.0', '15.0', '10.0', '10.0', '13.0', '14.5', '6.0', '5.0', '8.0', '4.0', '8.5', '5.5', '21.5', '5.0', '21.0', '5.5', '3.5', '8.5', '9.0', '12.5', '-', '5.0', '1.5', '12.0', '9.5', '8.0', '10.5', '11.0', '17.5', '10.5', '22.5', '14.5', '28.5', '14.0', '16.0', '25.0', '9.5', '26.0', '19.5', '7.0', '21.0', '26.0', '28.0', '4.5', '25.0', '6.5', '6.5', '11.5', '10.0'], ['10.5', '3.0', '7.5', '16.5', '2.0', '12.0', '7.5', '18.5', '12.5', '6.0', '5.0', '1.5', '4.5', '3.0', '5.5', '4.0', '7.0', '12.5', '6.5', '5.5', '13.5', '11.0', '7.0', '8.5', '3.0', '6.5', '6.0', '2.0', '22.0', '3.5', '22.0', '2.0', '2.5', '10.0', '5.5', '8.5', '5.0', '-', '5.5', '9.5', '8.0', '7.5', '7.5', '8.5', '19.5', '6.0', '19.0', '13.0', '25.0', '12.5', '13.0', '23.0', '7.0', '24.5', '19.0', '10.0', '21.5', '25.5', '25.5', '6.5', '22.5', '3.0', '8.0', '11.0', '7.0'], ['15.0', '5.0', '11.5', '19.0', '3.5', '15.5', '13.0', '21.5', '15.5', '7.5', '7.5', '6.5', '9.0', '8.5', '11.0', '9.5', '5.0', '13.5', '10.5', '11.5', '11.5', '15.0', '5.0', '3.5', '8.5', '6.0', '8.5', '6.0', '20.0', '4.5', '19.5', '7.5', '4.0', '10.0', '10.0', '12.5', '1.5', '5.5', '-', '13.5', '10.0', '7.5', '10.5', '12.5', '16.0', '11.5', '18.5', '16.5', '27.5', '13.5', '15.5', '22.0', '10.5', '23.5', '18.5', '5.5', '19.5', '24.5', '29.0', '3.0', '26.0', '7.0', '8.0', '10.0', '11.0'], ['1.5', '8.5', '2.0', '22.0', '10.0', '2.5', '4.0', '24.0', '19.0', '7.5', '6.0', '8.5', '9.0', '7.5', '5.5', '6.5', '16.0', '19.5', '12.5', '6.5', '23.0', '15.5', '16.5', '17.0', '8.0', '10.0', '13.5', '7.5', '28.0', '13.0', '31.0', '8.5', '11.5', '13.5', '10.0', '13.0', '12.0', '9.5', '13.5', '-', '4.5', '16.0', '14.0', '1.0', '28.0', '4.5', '24.5', '3.5', '31.0', '19.5', '18.0', '29.5', '3.5', '31.0', '24.0', '19.0', '30.5', '31.5', '30.5', '15.5', '27.5', '10.5', '12.0', '20.0', '2.0'], ['6.0', '5.5', '2.5', '22.0', '7.0', '7.0', '6.5', '25.0', '19.0', '4.5', '4.0', '6.5', '9.5', '7.0', '6.5', '7.0', '14.0', '19.0', '13.0', '8.0',
'21.0', '16.0', '14.0', '14.5', '8.0', '6.0', '13.0', '5.5', '29.0', '11.0', '29.5', '8.0', '9.5', '9.5', '10.5', '13.5', '9.5', '8.0', '10.0', '4.5', '-', '15.0', '14.0', '3.5', '26.5', '5.0', '24.5', '8.0', '32.0', '19.0', '19.5', '28.5', '1.0', '31.0', '24.5', '16.0', '28.0', '32.0', '31.0', '12.0', '28.0', '10.0', '8.0', '18.5', '2.5'], ['15.5', '9.0', '14.5', '14.0', '7.5', '17.5', '12.5', '16.5', '10.5', '12.0', '11.5', '9.0', '8.0', '9.0', '10.5', '10.0', '2.5', '7.5', '5.5', '10.5', '7.0', '10.5', '2.5', '5.0', '7.5', '12.0', '3.5', '9.0', '15.5', '3.5', '15.0', '8.5', '5.0', '15.5', '8.5', '8.0', '8.0', '7.5', '7.5', '16.0', '15.0', '-', '5.5', '15.0', '12.5', '11.5', '12.5', '18.5', '21.5', '7.0', '9.0', '16.0', '14.0', '17.5', '12.5', '5.0', '14.5', '18.0', '23.0', '10.5', '20.0', '5.5', '13.5', '4.0', '14.0'], ['13.0', '10.0', '13.0', '9.0', '9.0', '15.0', '10.0', '11.5', '5.0', '13.5', '12.5', '9.0', '5.0', '7.5', '8.5', '8.0', '7.0', '5.5', '1.5', '7.5', '11.5', '6.0', '7.0', '9.5', '6.5', '13.5', '2.0', '9.5', '15.0', '7.0', '18.0', '7.0', '6.5', '17.0', '5.0', '3.5', '10.5', '7.5', '10.5', '14.0', '14.0', '5.5', '-', '13.0', '16.0', '9.5', '10.5', '16.0', '17.5', '5.5', '5.5', '15.5', '13.5', '17.0', '10.5', '10.0', '19.0', '17.5', '18.0', '7.5', '15.0', '4.0', '15.0', '8.5', '12.5'], ['2.5', '7.5', '1.0', '21.0', '9.0', '3.0', '4.0', '23.5', '18.0', '8.0', '5.0', '7.5', '8.0', '6.5', '5.0', '5.5', '15.5', '18.5', '11.5', '6.5', '22.0', '14.5', '15.5', '16.0', '7.0', '9.0', '12.0', '6.5', '28.0', '12.0', '30.0', '8.0', '10.5', '12.5', '9.0', '12.0', '11.0', '8.5', '12.5', '1.0', '3.5', '15.0', '13.0', '-', '27.0', '3.5', '23.5', '4.5', '30.0', '18.5', '17.0', '28.5', '2.5', '30.0', '23.5', '18.0', '29.5', '31.0', '29.5', '13.5', '26.5', '9.5', '11.0', '19.0', '1.5'], ['27.5', '19.0', '27.0', '19.0', '17.5', '29.5', '24.5', '16.5', '14.0', '22.5', '24.0', '19.0', '19.5', '21.0', '22.5', '21.5', '11.0', '10.5', '17.0', '22.0', '4.5', '22.0', '11.0', '13.0', '20.0', '22.0', '15.0', '21.5', '7.5', '16.0', '4.5', '22.5', '17.5', '26.0', '19.5', '19.5', '17.5', '19.5', '16.0', '28.0', '26.5', '12.5', '16.0', '27.0', '-', '23.5', '14.0', '30.5', '16.0', '9.5', '16.0', '10.5', '26.5', '9.0', '12.0', '10.5', '4.0', '9.0', '18.0', '13.0', '20.0', '18.0', '24.0', '8.5', '26.5'], ['5.5', '8.0', '3.5', '17.5', '8.0', '6.5', '2.5', '20.0',
'14.5', '8.0', '6.0', '7.0', '4.5', '3.0', '1.5', '2.0', '13.0', '15.0', '8.5', '3.0', '18.5', '11.0', '13.0', '14.5', '3.5', '10.5', '9.0', '6.0', '24.5', '9.5', '26.5', '4.5', '8.0', '14.0', '5.5', '8.5', '10.5', '6.0', '11.5', '4.5', '5.0', '11.5', '9.5', '3.5', '23.5', '-', '20.0', '8.0', '26.5', '15.0', '13.5', '25.0', '4.0', '26.5', '20.0', '15.5', '26.0', '27.5', '26.0', '12.0', '23.0', '6.0', '12.5', '15.5', '3.0'], ['23.5', '21.0', '23.5', '5.0', '20.5', '25.5', '20.5', '2.5', '7.5', '24.0', '23.0', '21.5', '15.0', '18.0', '19.0', '18.5', '15.0', '6.0', '12.0', '18.0', '13.5', '13.5', '15.0', '17.5', '17.0', '23.5', '12.5', '20.5', '6.0', '16.0', '9.0', '17.5', '17.0', '27.5', '15.5', '13.5', '22.5', '19.0', '18.5', '24.5', '24.5', '12.5', '10.5', '23.5', '14.0', '20.0', '-', '27.0', '7.0', '7.5', '10.0', '7.0', '24.0', '8.5', '1.5', '17.5', '11.0', '9.0', '9.0', '15.5', '6.0', '14.5', '25.5', '11.0', '23.0'], ['3.0', '12.0', '5.5', '24.0', '13.5', '1.0', '6.0', '26.5', '21.5', '11.0', '9.5', '12.0', '11.5', '10.5', '8.0', '9.5', '19.5', '21.5', '15.0', '8.5', '25.5', '17.5', '20.5', '20.5', '10.5', '13.0', '16.0', '10.5', '26.0', '18.0', '33.5', '11.5', '15.0', '17.0', '12.0', '15.5', '14.5', '13.0', '16.5', '3.5', '8.0', '18.5', '16.0', '4.5', '30.5', '8.0', '27.0', '-', '33.5', '22.0', '21.5', '31.5', '7.0', '33.5', '26.5', '22.5', '33.5', '34.0', '32.5', '18.0', '29.5', '13.0', '15.0', '22.0', '5.5'], ['30.0', '28.0', '30.5', '9.5', '26.5', '32.0', '27.0', '7.0', '13.0', '31.0', '30.5', '26.5', '22.0', '24.5', '25.5', '25.5', '22.5', '13.5', '19.0', '25.0', '20.0', '16.0', '22.5', '25.0', '24.5', '31.5', '19.5', '27.5', '13.5', '24.5', '12.0', '24.5', '25.0', '35.0', '21.5', '18.0', '28.5', '25.0', '27.5', '31.0', '32.0', '21.5', '17.5', '30.0', '16.0', '26.5', '7.0', '33.5', '-', '14.5', '14.5', '7.5', '31.0', '6.5', '9.0', '25.0', '13.0', '7.0', '2.0', '24.0', '3.5', '22.0', '33.0', '18.5', '30.0'], ['18.5', '15.0', '18.0', '7.5', '13.5', '21.0', '15.5', '10.0', '4.5', '18.5', '18.0', '14.0', '10.5', '12.5', '13.5', '13.0', '7.5', '1.0', '7.0', '13.0', '6.0', '12.5', '7.5', '10.0', '11.5', '18.0', '6.0', '14.5', '11.0', '10.0', '13.5', '12.0', '11.0', '21.5', '11.5', '9.5', '14.0', '12.5', '13.5', '19.5', '19.0', '7.0', '5.5', '18.5', '9.5', '15.0', '7.5', '22.0', '14.5', '-', '6.5', '12.0', '18.5', '13.5', '6.5', '9.5', '13.5', '14.0', '16.0', '10.0', '13.0', '9.0', '20.0', '3.5', '18.0'], ['17.0', '16.0', '17.0', '5.0', '14.5', '20.5', '14.0', '7.5', '3.0', '19.0', '18.0', '14.5', '9.0', '12.0', '12.5', '13.5', '12.5', '5.5', '7.0', '13.0', '13.0', '4.5', '12.5', '15.5', '11.0', '19.0', '7.5', '15.0', '14.0', '12.5',
'17.5', '12.5', '12.5', '22.5', '9.0', '5.0', '16.0', '13.0', '15.5', '18.0', '19.5', '9.0', '5.5', '17.0', '16.0', '13.5', '10.0', '21.5', '14.5', '6.5', '-', '15.5', '19.0', '17.0', '9.5', '15.0', '18.5', '17.5', '14.0', '13.0', '11.0', '9.5', '20.5', '11.0', '18.0'], ['25.5', '26.0', '28.5', '12.0', '23.0', '30.5', '25.5', '9.5', '12.5', '29.5', '27.5', '24.5', '20.0', '23.0', '23.5', '23.5', '19.0', '11.5', '17.0', '23.0', '10.5', '15.0',
'19.0', '22.0', '22.0', '27.5', '17.5', '25.0', '8.0', '21.5', '6.0', '22.5', '20.5', '33.0', '20.5', '19.0', '25.0', '23.0', '22.0', '29.5', '28.5', '16.0', '15.5', '28.5', '10.5', '25.0', '7.0', '31.5', '7.5', '12.0', '15.5', '-', '28.0', '1.5', '5.5', '20.0', '8.5', '2.5', '9.5', '21.0', '11.0', '20.5', '31.0', '15.5', '28.0'], ['5.0', '6.0', '1.5', '21.5', '7.5', '5.5', '5.5', '23.5', '18.5', '4.0', '3.5', '6.0', '8.5', '6.0', '5.5', '5.5', '14.0', '18.5', '12.0', '7.0', '20.5', '15.0', '14.0', '14.5', '7.0', '6.5', '12.0', '5.0', '28.0', '10.5', '28.5', '7.0', '9.0', '10.0', '9.5', '12.5', '9.5', '7.0', '10.5', '3.5', '1.0', '14.0', '13.5', '2.5', '26.5', '4.0', '24.0', '7.0', '31.0', '18.5', '19.0', '28.0', '-', '30.5', '23.5', '16.5', '28.5', '31.0', '30.0', '12.0', '27.0', '9.0', '8.5', '18.0', '1.0'], ['27.0', '27.0', '30.0', '13.5', '24.0', '32.0', '27.0', '11.0', '14.0', '31.0', '29.0', '26.0', '22.0', '24.5', '25.0', '25.0', '19.5', '13.0', '18.0', '24.5', '12.0', '20.0', '19.5', '21.0', '23.5', '29.0', '19.0', '26.5', '6.5', '21.5', '5.0', '24.0', '22.0', '33.5', '22.0', '20.5', '26.0', '24.5', '23.5', '31.0', '31.0', '17.5', '17.0', '30.0', '9.0', '26.5', '8.5', '33.5', '6.5', '13.5', '17.0', '1.5', '30.5', '-', '7.0', '19.0', '6.5', '1.0', '8.5', '21.5', '10.0', '21.0', '31.5', '14.5', '29.5'], ['23.5', '20.5', '23.0', '6.5', '19.0', '25.5', '20.5', '4.5', '7.5', '23.5', '22.5', '20.5', '15.0', '18.0', '18.5', '18.0', '13.5', '5.5', '11.5', '18.0', '12.5', '13.0', '13.5', '16.0', '17.0', '23.5', '12.0', '20.0', '4.5', '16.0', '8.0', '17.0', '16.5', '27.0', '15.0', '13.5', '19.5', '19.0', '18.5', '24.0', '24.5', '12.5', '10.5', '23.5', '12.0', '20.0', '1.5', '26.5', '9.0', '6.5', '9.5', '5.5', '23.5', '7.0', '-', '16.0', '9.0', '8.0', '10.5', '15.0', '8.0', '14.5', '25.0', '9.5', '23.0'], ['19.5', '10.5', '17.0', '17.5', '9.5', '21.0', '16.5', '19.5', '14.0', '13.5', '13.5', '10.5', '12.0', '12.5', '14.5', '13.5', '2.5', '11.0', '10.0', '14.0', '6.0', '15.0', '2.5', '2.0', '11.5', '12.0', '8.0', '11.5', '14.5', '6.0', '14.5', '11.5', '7.5', '15.5', '13.0', '12.5', '7.0', '10.0', '5.5', '19.0', '16.0', '5.0', '10.0', '18.0', '10.5', '15.5', '17.5', '22.5', '25.0', '9.5', '15.0', '20.0', '16.5', '19.0', '16.0', '-', '17.0', '19.0', '26.5', '5.0', '23.5', '9.0', '13.5', '7.0', '17.0'], ['31.5', '22.5', '28.5', '15.5', '21.0', '32.5', '27.0', '13.0', '16.5', '26.0', '25.5', '23.5', '22.0', '23.5', '25.0', '24.0', '14.5', '14.5', '20.5', '24.5', '8.0', '22.0', '14.5', '16.0', '22.5', '25.5', '17.5', '23.5', '4.5', '18.0', '1.5', '22.5', '19.0', '29.0', '23.0', '22.5', '21.0', '21.5', '19.5', '30.5', '28.0', '14.5', '19.0', '29.5', '4.0', '26.0', '11.0', '33.5', '13.0', '13.5', '18.5', '8.5', '28.5', '6.5', '9.0', '17.0', '-', '6.0', '15.0', '16.5', '17.0', '20.0', '27.0', '11.0', '28.5'], ['31.0', '27.0', '30.5', '14.0', '25.5', '33.0', '28.0', '12.0', '15.0', '30.5', '30.0', '27.0', '22.5', '25.5', '26.0', '26.5', '19.5', '13.5', '19.0', '25.5', '13.0', '20.5', '19.5', '21.0', '24.5', '30.0', '19.5', '27.0', '6.5', '21.5', '4.5', '24.5', '23.0', '33.5', '22.5', '21.0', '26.0', '25.5', '24.5', '31.5', '32.0', '18.0', '17.5', '31.0', '9.0', '27.5', '9.0', '34.0', '7.0', '14.0', '17.5', '2.5', '31.0', '1.0', '8.0', '19.0', '6.0', '-', '9.0', '21.5', '11.0', '22.0', '31.5', '14.5', '30.5'], ['31.5', '28.0', '29.5', '9.0', '27.0', '31.5', '26.5', '6.5', '12.5', '31.5', '30.0', '27.0', '21.5', '24.0', '25.0', '25.0', '24.0', '15.5', '19.5', '24.0', '22.0', '15.0', '24.0', '26.5', '23.0', '31.5', '19.5', '27.0', '15.0', '26.5', '13.5', '25.0', '24.5', '35.0', '21.0', '17.5', '28.0', '25.5', '29.0', '30.5', '31.0', '23.0', '18.0', '29.5', '18.0', '26.0',
'9.0', '32.5', '2.0', '16.0', '14.0', '9.5', '30.0', '8.5', '10.5', '26.5', '15.0', '9.0', '-', '26.0', '3.0', '22.0', '33.0', '20.5', '29.0'], ['16.0', '6.5', '12.5', '16.0', '4.5', '16.5', '14.0', '18.5', '12.5', '9.5', '9.0', '7.0', '8.5', '8.5', '11.0', '11.5', '2.0', '10.0', '8.0', '10.5', '8.5', '13.0', '2.0', '2.5', '9.0', '9.0', '5.5', '8.0', '17.0', '2.0', '16.5', '8.0', '4.0', '12.5', '8.5', '10.5', '4.5', '6.5', '3.0', '15.5', '12.0', '10.5', '7.5', '13.5', '13.0', '12.0', '15.5', '18.0', '24.0', '10.0', '13.0', '21.0', '12.0', '21.5', '15.0', '5.0', '16.5', '21.5', '26.0', '-', '22.5', '8.5', '11.0', '6.5', '12.0'], ['26.5', '28.0', '26.5', '6.0', '24.0', '28.5', '23.5', '3.5', '9.0', '28.0', '27.0', '18.5', '18.5', '21.0', '21.5', '21.5', '21.0', '12.5', '16.5', '21.0', '20.0', '12.0', '21.0', '23.5', '20.0', '28.0', '16.5', '24.0', '17.0', '23.0', '15.5', '22.0', '21.5', '32.0', '18.0', '14.5', '25.0', '22.5', '26.0', '27.5', '28.0', '20.0', '15.0', '26.5', '20.0', '23.0', '6.0', '29.5', '3.5', '13.0', '11.0', '11.0', '27.0', '10.0', '8.0', '23.5', '17.0', '11.0', '3.0', '22.5', '-', '19.0', '30.0', '17.5', '26.0'], ['10.0', '6.0', '9.0', '13.0', '5.0', '12.0', '7.0', '15.5', '10.0', '9.0', '8.0', '4.5', '3.0', '3.5', '5.0', '4.0', '7.0', '9.0', '3.5', '5.0', '12.0', '8.0', '7.0', '9.0', '2.5', '9.0', '3.0', '5.5', '19.0', '3.5', '20.5', '2.5', '3.0', '13.0', '3.5', '5.5', '6.5', '3.0', '7.0', '10.5', '10.0', '5.5', '4.0', '9.5', '18.0', '6.0', '14.5', '13.0', '22.0', '9.0', '9.5', '20.5', '9.0', '21.0', '14.5', '9.0', '20.0', '22.0', '22.0', '8.5', '19.0', '-', '11.0', '9.5', '9.0'], ['13.5', '5.5', '10.0', '24.0', '6.0', '14.0', '14.0', '26.5', '15.0', '4.5', '6.0', '2.0', '12.5', '10.0', '12.5', '11.5', '12.5', '20.0', '14.5', '12.5', '19.5', '19.0', '12.5', '11.5', '11.0', '2.0', '13.5', '7.0', '28.5', '9.5', '27.5', '10.0', '8.5', '2.0', '13.5', '16.5', '6.5', '8.0', '8.0', '12.0', '8.0', '13.5', '15.0', '11.0', '24.0', '12.5', '25.5', '15.0', '33.0', '20.0', '20.5', '31.0', '8.5', '31.5', '25.0', '13.5', '27.0', '31.5', '33.0', '11.0', '30.0', '11.0', '-', '17.5', '9.5'], ['18.5', '13.0', '18.5', '11.0', '11.5', '21.0', '16.5', '13.5', '8.0', '16.0', '15.5', '13.0', '11.0', '12.5', '14.5', '14.0', '5.0', '4.5', '9.0', '14.0', '3.5', '14.0', '5.0', '8.0', '11.5', '16.0', '6.5', '13.0', '9.5', '7.5', '11.5', '12.0', '8.5', '19.5', '11.0', '11.5', '11.5', '11.0', '10.0', '20.0', '18.5', '4.0', '8.5', '19.0', '8.5', '15.5', '11.0', '22.0', '18.5', '3.5', '11.0', '15.5', '18.0', '14.5', '9.5', '7.0', '11.0', '14.5', '20.5', '6.5', '17.5', '9.5', '17.5', '-', '18.0'], ['3.5', '6.5', '0.5', '20.5', '7.5', '4.5', '4.5', '22.5', '17.5', '5.0', '4.0', '6.0', '7.5', '5.5', '4.5', '5.0', '14.0', '18.0', '11.0', '6.0', '20.5', '14.0', '14.0', '15.0', '6.5', '6.0', '11.5', '5.0', '27.5', '10.5', '29.0', '6.5', '9.5', '11.0', '8.5', '11.5', '10.0', '7.0', '11.0', '2.0', '2.5', '14.0', '12.5', '1.5', '26.5', '3.0', '23.0', '5.5', '30.0', '18.0', '18.0', '28.0', '1.0', '29.5', '23.0', '17.0', '28.5', '30.5', '29.0', '12.0', '26.0', '9.0', '9.5', '18.0', '-']]

var alpha_cities = ["Albany", "Atlanta", "Baltimore", "Billings", "Birmingham", "Boston", "Buffalo", "Butte", "Casper", "Charleston", "Charlotte", "Chattanooga", "Chicago", "Cincinnati", "Cleveland", "Columbus", "Dallas", "Denver", "Des Moines", "Detroit", "El Paso", "Fargo", "Fort Worth", "Houston", "Indianapolis", "Jacksonville", "Kansas City", "Knoxville", "Las Vegas", "Little Rock", "Los Angeles", "Louisville", "Memphis", "Miami", "Milwaukee", "Minneapolis-St Paul", "Mobile", "Nashville", "New Orleans", "New York", "Norfolk", "Oklahoma City", "Omaha", "Philadelphia", "Phoenix", "Pittsburgh", "Pocatello", "Portland ME", "Portland OR", "Pueblo", "Rapid City", "Reno", "Richmond", "Sacramento", "Salt Lake City", "San Antonio", "San Diego", "San Francisco-Oakland", "Seattle", "Shreveport", "Spokane", "St Louis", "Tampa", "Tucumcari", "Washington DC"]

func calculate_payout(startTrip, destination):
	print("in calculate_payout")
	print(startTrip, destination)
	var startPosition = alpha_cities.find(startTrip)
	var startPosPayouts = payoutChart[startPosition]
	print(startPosPayouts)
	var payout = float(startPosPayouts[alpha_cities.find(destination)])
	return payout
