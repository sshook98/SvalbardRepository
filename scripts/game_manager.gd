extends Node2D

var rng = RandomNumberGenerator.new()
var last_message_is_help_message = false
var ready_for_input = true
var can_move = true


# Encounter C1
var encounter1_part1_option1 = Option.new("test action 1", "test result 1", 1)
var encounter1_part1 = EncounterPart.new("test prompt 1", [encounter1_part1_option1])

var encounter1_part2_option1 = Option.new("test action 2", "test result 2")
var encounter1_part2_option2 = Option.new("test action 3", "test result 3")
var encounter1_part2 = EncounterPart.new("test prompt 2", [encounter1_part2_option1, encounter1_part2_option2])

var encounter1 = Encounter.new("C1", [encounter1_part1, encounter1_part2])

# Encounter C2
var encounter2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounter2_part1 = EncounterPart.new("test prompt 3", [encounter1_part1_option1])

var encounter2_part2_option1 = Option.new("test action 5", "test result 5")
var encounter2_part2_option2 = Option.new("test action 6", "test result 6")
var encounter2_part2 = EncounterPart.new("test prompt 4", [encounter1_part2_option1, encounter1_part2_option2])
var encounter2 = Encounter.new("C2", [encounter2_part1, encounter2_part2])

var encounters = [encounter1, encounter2]
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
	current_encounter = find_starting_encounter()
	start_encounter()


func find_starting_encounter():
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
	can_move = true
	$RichTextLabel.newline()
	await add_text_line("It's time to move on")
	
	
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
		map_tile.hide()

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
			current_encounter.encounter_part_index = option.next_encounter_part_index
			last_message_is_help_message = false
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
		# TODO: update the red dot positioning
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
	
	
