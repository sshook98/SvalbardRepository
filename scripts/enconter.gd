extends Object

class_name Encounter

var map_pos: String
var encounter_parts: Array[EncounterPart]
var encounter_part_index: int

# Called when the class is consructed
func _init(_map_pos: String, _encounter_parts: Array[EncounterPart]):
	map_pos = _map_pos
	encounter_parts = _encounter_parts
	encounter_part_index = 0
