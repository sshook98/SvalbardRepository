extends Object

class_name Option

var next_encounter_part_index: int
var action: String
var result: String
var results_in_death: bool

# Called when the class is consructed
func _init(_action: String, _result: String, _next_encounter_part_index: int = -1, _results_in_death: bool = false):
	next_encounter_part_index = _next_encounter_part_index
	result = _result
	action = _action
	results_in_death = _results_in_death
	
