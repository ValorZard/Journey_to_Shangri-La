extends Node

class_name Backstory

onready var stats = $Stats
export var starting_stats : Resource

func _ready():
	stats.initialize(starting_stats)
