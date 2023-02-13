extends Node

class_name StatsFunc

var kind : int
var charm : int
var brave : int
var smart : int

func initialize(stats : stats):
	kind = stats.kind
	charm = stats.charm
	brave = stats.brave
	smart = stats.smart
	Dialogic.set_variable("kind", kind)
	Dialogic.set_variable("charm", charm)
	Dialogic.set_variable("brave", brave)
	Dialogic.set_variable("smart", smart)
	
func change_kind(value):
	#changes value of kind stat (value can only be pos)
	kind += value
	Dialogic.set_variable("kind", kind)
	
func change_charm(value):
	charm += value
	Dialogic.set_variable("charm", charm)

func change_brave(value):
	brave += value
	Dialogic.set_variable("brave", brave)
	
func change_smart(value):
	smart += value
	Dialogic.set_variable("smart", smart)
