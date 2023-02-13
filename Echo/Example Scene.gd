extends Node2D

func _ready():
	var new_dialog = Dialogic.start('Example Timeline')
	add_child(new_dialog)
