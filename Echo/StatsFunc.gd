extends Node

class_name StatsFunc

var kind : int
var charm : int
var brave : int
var smart : int
var raj : int
var mateo : int

func initialize(stats : stats):
	kind = stats.kind
	charm = stats.charm
	brave = stats.brave
	smart = stats.smart
	Dialogic.set_variable("kind", kind)
	Dialogic.set_variable("charm", charm)
	Dialogic.set_variable("brave", brave)
	Dialogic.set_variable("smart", smart)
	
# This function prints every time a stat is increased (for debug purposes)
func _process(delta):
	if kind != int(Dialogic.get_variable("kind")):
		print("kind: ", kind, " --> ", Dialogic.get_variable("kind"))
		kind = int(Dialogic.get_variable("kind"))
	if charm != int(Dialogic.get_variable("charm")):
		print("charm: ", charm, " --> ", Dialogic.get_variable("charm"))
		charm = int(Dialogic.get_variable("charm"))
	if brave != int(Dialogic.get_variable("brave")):
		print("brave: ", brave, " --> ", Dialogic.get_variable("brave"))
		brave = int(Dialogic.get_variable("brave"))
	if smart != int(Dialogic.get_variable("smart")):
		print("smart: ", smart, " --> ", Dialogic.get_variable("smart"))
		smart = int(Dialogic.get_variable("smart"))
	if raj != int(Dialogic.get_variable("raj")):
		print("raj: ", raj, " --> ", Dialogic.get_variable("raj"))
		raj = int(Dialogic.get_variable("raj"))
	if mateo != int(Dialogic.get_variable("mateo")):
		print("mateo: ", mateo, " --> ", Dialogic.get_variable("mateo"))
		mateo = int(Dialogic.get_variable("mateo"))
	
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
