extends Object

class_name Option

var next_encounter_part_index: int
var action: String
var result: String
var results_in_death: bool
var cause_of_death: String
# Called when the class is consructed
func _init(_action: String, _result: String, _next_encounter_part_index: int = -1, _results_in_death: bool = false, _cause_of_death: String = ""):
	next_encounter_part_index = _next_encounter_part_index
	result = _result
	action = _action
	results_in_death = _results_in_death
	cause_of_death = _cause_of_death
	
