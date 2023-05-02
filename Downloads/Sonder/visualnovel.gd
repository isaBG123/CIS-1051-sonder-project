extends Node2D

func _ready():
	var new_dialog = Dialogic.start('timeline-1682721018.json')
	add_child(new_dialog)
	# game should start after the beggining part
	new_dialog.connect("timeline_end", self, 'part1')

func part1(timeline_name):
	var new_dialog = Dialogic.start('timeline-1682560061.json')
	add_child(new_dialog)
	new_dialog.connect("timeline_end", self, 'part2')

func part2(timeline_name):
	var new_dialog = Dialogic.start('timeline-1682642963.json')
	add_child(new_dialog)
	new_dialog.connect("timeline_end", self, 'part3')

func part3(timeline_name):
	var new_dialog = Dialogic.start('timeline-1682650947.json')
	add_child(new_dialog)
	new_dialog.connect("timeline_end", self, 'part4')

func part4(timeline_name):
	var new_dialog = Dialogic.start('timeline-1682721271.json')
	add_child(new_dialog)
	new_dialog.connect("timeline_end", self, 'part5')

func part5(timeline_name):
	var new_dialog = Dialogic.start('timeline-1682728334.json')
	add_child(new_dialog)
	#boss fight
	new_dialog.connect("timeline_end", self, 'end')
	
func end(timeline_name):
	var new_dialog = Dialogic.start('timeline-1682730580.json')
	add_child(new_dialog)

