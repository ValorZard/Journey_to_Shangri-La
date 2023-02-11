extends Node

class_name StatsFunc

var kind : int
var charm : int
var brave : int
var smart : int

func _init(stats):
	kind = stats.kind
	charm = stats.charm
	brave = stats.brave
	smart = stats.smart
	
func change_kind(value):
	#changes value of kind stat (value can be neg or pos)
	kind += value
	
func change_charm(value):
	charm += value

func change_brave(value):
	brave += value
	
func change_smart(value):
	smart += value
