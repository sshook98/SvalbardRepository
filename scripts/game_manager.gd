extends Node2D

var rng = RandomNumberGenerator.new()
var last_message_is_help_message = false
var ready_for_input = true
var can_move = true


# Encounter C1
var encounterC1_part1_option1 = Option.new("test action 1", "test result 1", 1)
var encounterC1_part1 = EncounterPart.new("test prompt 1", [encounterC1_part1_option1])

var encounterC1_part2_option1 = Option.new("test action 2", "test result 2")
var encounterC1_part2_option2 = Option.new("test action 3", "test result 3")
var encounterC1_part2 = EncounterPart.new("test prompt 2", [encounterC1_part2_option1, encounterC1_part2_option2])

var encounterC1 = Encounter.new("C1", [encounterC1_part1, encounterC1_part2])

# Encounter C2
var encounterC2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC2_part1 = EncounterPart.new("test prompt 3", [encounterC2_part1_option1])

var encounterC2_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC2_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC2_part2 = EncounterPart.new("test prompt 4", [encounterC2_part2_option1, encounterC2_part2_option2])

var encounterC2 = Encounter.new("C2", [encounterC2_part1, encounterC2_part2])

# Encounter C3
var encounterC3_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC3_part1 = EncounterPart.new("test prompt 3", [encounterC3_part1_option1])

var encounterC3_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC3_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC3_part2 = EncounterPart.new("test prompt 4", [encounterC3_part2_option1, encounterC3_part2_option2])

var encounterC3 = Encounter.new("C3", [encounterC3_part1, encounterC3_part2])

# Encounter C4
var encounterC4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC4_part1 = EncounterPart.new("test prompt 3", [encounterC4_part1_option1])

var encounterC4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC4_part2 = EncounterPart.new("test prompt 4", [encounterC4_part2_option1, encounterC4_part2_option2])

var encounterC4 = Encounter.new("C4", [encounterC4_part1, encounterC4_part2])

# Encounter C5
var encounterC5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC5_part1 = EncounterPart.new("test prompt 3", [encounterC5_part1_option1])

var encounterC5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC5_part2 = EncounterPart.new("test prompt 4", [encounterC5_part2_option1, encounterC5_part2_option2])

var encounterC5 = Encounter.new("C5", [encounterC5_part1, encounterC5_part2])

# Encounter C6
var encounterC6_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC6_part1 = EncounterPart.new("test prompt 3", [encounterC6_part1_option1])

var encounterC6_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC6_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC6_part2 = EncounterPart.new("test prompt 4", [encounterC6_part2_option1, encounterC6_part2_option2])

var encounterC6 = Encounter.new("C6", [encounterC6_part1, encounterC6_part2])

# Encounter A4
var encounterA4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterA4_part1 = EncounterPart.new("test prompt 3", [encounterA4_part1_option1])

var encounterA4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterA4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterA4_part2 = EncounterPart.new("test prompt 4", [encounterA4_part2_option1, encounterA4_part2_option2])

var encounterA4 = Encounter.new("A4", [encounterA4_part1, encounterA4_part2])

# Encounter A5
var encounterA5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterA5_part1 = EncounterPart.new("test prompt 3", [encounterA5_part1_option1])

var encounterA5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterA5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterA5_part2 = EncounterPart.new("test prompt 4", [encounterA5_part2_option1, encounterA5_part2_option2])

var encounterA5 = Encounter.new("A5", [encounterA5_part1, encounterA5_part2])

# Encounter B2
var encounterB2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB2_part1 = EncounterPart.new("test prompt 3", [encounterB2_part1_option1])

var encounterB2_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB2_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB2_part2 = EncounterPart.new("test prompt 4", [encounterB2_part2_option1, encounterB2_part2_option2])

var encounterB2 = Encounter.new("B2", [encounterB2_part1, encounterB2_part2])

# Encounter B3
var encounterB3_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB3_part1 = EncounterPart.new("test prompt 3", [encounterB3_part1_option1])

var encounterB3_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB3_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB3_part2 = EncounterPart.new("test prompt 4", [encounterB3_part2_option1, encounterB3_part2_option2])

var encounterB3 = Encounter.new("B3", [encounterB3_part1, encounterB3_part2])

# Encounter B4
var encounterB4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB4_part1 = EncounterPart.new("test prompt 3", [encounterB4_part1_option1])

var encounterB4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB4_part2 = EncounterPart.new("test prompt 4", [encounterB4_part2_option1, encounterB4_part2_option2])

var encounterB4 = Encounter.new("B4", [encounterB4_part1, encounterB4_part2])

# Encounter B5
var encounterB5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB5_part1 = EncounterPart.new("test prompt 3", [encounterB5_part1_option1])

var encounterB5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB5_part2 = EncounterPart.new("test prompt 4", [encounterB5_part2_option1, encounterB5_part2_option2])

var encounterB5 = Encounter.new("B5", [encounterB5_part1, encounterB5_part2])

# Encounter B6
var encounterB6_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB6_part1 = EncounterPart.new("test prompt 3", [encounterB6_part1_option1])

var encounterB6_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB6_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB6_part2 = EncounterPart.new("test prompt 4", [encounterB6_part2_option1, encounterB6_part2_option2])

var encounterB6 = Encounter.new("B6", [encounterB6_part1, encounterB6_part2])

# Encounter D2
var encounterD2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD2_part1 = EncounterPart.new("test prompt 3", [encounterD2_part1_option1])

var encounterD2_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD2_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD2_part2 = EncounterPart.new("test prompt 4", [encounterD2_part2_option1, encounterD2_part2_option2])

var encounterD2 = Encounter.new("D2", [encounterD2_part1, encounterD2_part2])

# Encounter D3
var encounterD3_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD3_part1 = EncounterPart.new("test prompt 3", [encounterD3_part1_option1])

var encounterD3_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD3_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD3_part2 = EncounterPart.new("test prompt 4", [encounterD3_part2_option1, encounterD3_part2_option2])

var encounterD3 = Encounter.new("D3", [encounterD3_part1, encounterD3_part2])

# Encounter D4
var encounterD4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD4_part1 = EncounterPart.new("test prompt 3", [encounterD4_part1_option1])

var encounterD4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD4_part2 = EncounterPart.new("test prompt 4", [encounterD4_part2_option1, encounterD4_part2_option2])

var encounterD4 = Encounter.new("D4", [encounterD4_part1, encounterD4_part2])

# Encounter D5
var encounterD5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD5_part1 = EncounterPart.new("test prompt 3", [encounterD5_part1_option1])

var encounterD5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD5_part2 = EncounterPart.new("test prompt 4", [encounterD5_part2_option1, encounterD5_part2_option2])

var encounterD5 = Encounter.new("D5", [encounterD5_part1, encounterD5_part2])

# Encounter D6
var encounterD6_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD6_part1 = EncounterPart.new("test prompt 3", [encounterD6_part1_option1])

var encounterD6_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD6_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD6_part2 = EncounterPart.new("test prompt 4", [encounterD6_part2_option1, encounterD6_part2_option2])

var encounterD6 = Encounter.new("D6", [encounterD6_part1, encounterD6_part2])

# Encounter E4
var encounterE4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterE4_part1 = EncounterPart.new("test prompt 3", [encounterE4_part1_option1])

var encounterE4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterE4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterE4_part2 = EncounterPart.new("test prompt 4", [encounterE4_part2_option1, encounterE4_part2_option2])

var encounterE4 = Encounter.new("E4", [encounterE4_part1, encounterE4_part2])

# Encounter E5
var encounterE5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterE5_part1 = EncounterPart.new("test prompt 3", [encounterE5_part1_option1])

var encounterE5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterE5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterE5_part2 = EncounterPart.new("test prompt 4", [encounterE5_part2_option1, encounterE5_part2_option2])

var encounterE5 = Encounter.new("E5", [encounterE5_part1, encounterE5_part2])


var encounters = [encounterC1, encounterC2, encounterC3, encounterC4, encounterC5, encounterC6,
encounterA4, encounterA5, encounterB2, encounterB3, encounterB4, encounterB5, encounterB6,
encounterD2, encounterD3, encounterD4, encounterD5, encounterD6, encounterE4, encounterE5]
var current_encounter = encounters[0]

var letter_to_number_dict = {
	"A": 1,
	"B": 2,
	"C": 3,
	"D": 4,
	"E": 5,
	
	1: "A",
	2: "B",
	3: "C",
	4: "D",
	5: "E",
	6: "F",
}

# Vector2i(col, row)
var valid_positions = [
		 "B6","C6","D6",
	"A5","B5","C5","D5","E5",
	"A4","B4","C4","D4","E4",
		 "B3","C3","D3",
		 "B2","C2","D2",
		 	  "C1",
	]

var initial_pos = "C1"
var player_pos = "C1"


#meowdy

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Valid positons: ", valid_positions)
	current_encounter = get_next_encounter()
	start_encounter()


func get_next_encounter():
	var starting_encounter = encounters[0]
	for encounter in encounters:
		if encounter.map_pos == player_pos:
			starting_encounter = encounter
	return starting_encounter
	
func start_encounter():
	var encounter_part = get_current_encounter_part()
	await add_text_line(encounter_part.prompt)
	
	var index = 1
	var options = encounter_part.options
	for option in options:
		await get_tree().create_timer(0.1).timeout
		await add_text_line(str(index) + ". " + option.action)
		index = index + 1
	
	can_move = false
	
func finish_encounter():
	# TODO: hide the map tile for the current player_pos
	reveal_map()
	can_move = true
	$RichTextLabel.newline()
	await add_text_line("It's time to move on")
	
func reveal_map():
	var map_tile = $Map.find_child(player_pos)
	map_tile.hide()
	
	
func is_encounter_complete(encounter):
	return encounter.encounter_part_index == -1
	
func are_all_enconters_complete():
	for encount in encounters:
		if not is_encounter_complete(encount):
			return false
	return true


func update_dot_position():
		var map_tile = $Map.find_child(player_pos)
		print(str(map_tile) + " updated dot position to") 
		$Map/Dot.position = map_tile.position

func _on_line_edit_text_changed(input_text):
	if input_text == "":
		return # Removing this causes infinite recursion
	elif ready_for_input == false:
		$LineEdit.clear()
		return
	
	if can_move:
		if input_text == "w":
			await move_up()
		elif input_text == "s":
			await move_down()
		elif input_text == "a":
			await move_left()
		elif input_text == "d":
			await move_right()
	else:
		var encounter_part = get_current_encounter_part()
		var options = encounter_part.options
		var int_input = int(input_text) - 1
		
		if int_input >= 0 and int_input < options.size():
			var option = encounter_part.options[int_input]
			await add_text_line(option.result)
			print("switching from " + str(current_encounter.encounter_part_index) + " to " + str(option.next_encounter_part_index))
			current_encounter.encounter_part_index = option.next_encounter_part_index
			last_message_is_help_message = false
			if current_encounter.encounter_part_index != -1: 
				await get_tree().create_timer(1).timeout
				await start_encounter()
		elif last_message_is_help_message == false:
			await add_text_line("Enter a number between 1 and " + str(options.size()))
			last_message_is_help_message = true
		
	$LineEdit.clear()
	
	if is_encounter_complete(current_encounter):
		finish_encounter()
	
func add_text_line(text_line):
	ready_for_input = false
	$RichTextLabel.newline()
	for letter in text_line:
		$RichTextLabel.add_text(letter)
		scroll_text_to_bottom()
		var wait_time = rng.randf_range(0.001, 0.005)
		await get_tree().create_timer(wait_time).timeout
	scroll_text_to_bottom()
	ready_for_input = true
	

func scroll_text_to_bottom():
	var lineCount = $RichTextLabel.get_line_count()
	$RichTextLabel.scroll_to_line(lineCount)
	
func move_up():
	print("trying to move up from " + str(player_pos))
	await try_move(Vector2i(0, 1))

func move_down():
	print("trying to move down from " + str(player_pos))
	await try_move(Vector2i(0, -1))

func move_left():
	print("trying to move left from " + str(player_pos))
	await try_move(Vector2i(-1, 0))
	
func move_right():
	print("trying to move right from " + str(player_pos))
	await try_move(Vector2i(1, 0))

	
func try_move(pos_change):
	var old_pos = player_pos
	var pos_vector = position_name_to_vector(player_pos)
	var new_pos = pos_vector + pos_change
	var new_pos_name = position_vector_to_name(new_pos)
	if is_position_valid(new_pos_name):
		player_pos = new_pos_name
		print("Moving from", old_pos, " to ", player_pos)
		await add_text_line("Moving from " + str(old_pos) + " to " + str(new_pos_name))
		update_dot_position()
		await get_tree().create_timer(1).timeout
		current_encounter = get_next_encounter()
		if !is_encounter_complete(current_encounter):
			await start_encounter()
			can_move = false
			print("hello")
		else:
			print(current_encounter.map_pos)
	else:
		await add_text_line("Cannot move to " + str(new_pos_name))
		print("Cannot move to ", new_pos_name)
	
func is_position_valid(pos):
	return valid_positions.has(pos)
	
func position_name_to_vector(pos_name): 
	var col = letter_to_number_dict[pos_name[0]]
	var row = int(pos_name[1])
	var result = Vector2i(col, row)
	print("Converted " + str(pos_name) + " to " + str(result))
	return result
	
func position_vector_to_name(pos_vector: Vector2i):
	if letter_to_number_dict.has(pos_vector.x) and letter_to_number_dict.has(pos_vector.y):
		var col = letter_to_number_dict[pos_vector.x]
		var row = str(pos_vector.y)
		var result = col + row
		print("Converted " + str(pos_vector) + " to " + str(result))
		return result
	else:
		#returning non valid map position
		return ":(" 

func get_current_encounter_part():
	var encounter_part_index = current_encounter.encounter_part_index
	var encounter_part = current_encounter.encounter_parts[encounter_part_index]
	return encounter_part
	
func clear_text():
	$RichTextLabel.clear()
	
	
