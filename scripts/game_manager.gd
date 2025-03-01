extends Node2D

var rng = RandomNumberGenerator.new()
var last_message_is_help_message = false
var ready_for_input = true
var can_move = true


# Encounter C1
var encounterC1_part1_option1 = Option.new("Get started", "You venture inland, pausing occasionally to sketch out the nearby topology and make note of any interesting geological features", 1)
var encounterC1_part1 = EncounterPart.new("It is a clear day and sunny day as you disembark from the Endurance having traveled from Norway to Svalbard in a short five days.  The Store Norske Spitsbergen Kulkompani (SNSK) has hired you to survey Spitsbergen, the largest island of the Svalbard Archipelago.  The SNSK plans to expand its mining operations after its recent acquisition of the American Arctic Coal Company", [encounterC1_part1_option1])

var encounterC1_part2_option1 = Option.new("Make camp for the night", "You find a shady spot beneath a rocky outcropping.  At this time of year, the sun doesn't set in Svalbard, so you take stock of your supplies and prepare to sleep under the midnight sun.  You've brought with you food and fuel, enough to last for the whole expedition, so long as things proceed as scheduled.  ")
var encounterC1_part2 = EncounterPart.new("You spend the day taking samples and sketching.  In the mid afternoon, you spot a far off column of smoke.  It could be from another explorer or perhaps a mining camp, but the captain also warned you about reports of bandits", [encounterC1_part2_option1])

var encounterC1 = Encounter.new("C1", [encounterC1_part1, encounterC1_part2])

# Encounter C2
var encounterC2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC2_part1 = EncounterPart.new("test prompt 3", [encounterC2_part1_option1])

var encounterC2_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC2_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC2_part2 = EncounterPart.new("test prompt 4", [encounterC2_part2_option1, encounterC2_part2_option2])

var encounterC2 = Encounter.new("C2", [encounterC2_part1, encounterC2_part2])

# Encounter C3
var encounterC3_part1_option1 = Option.new("Explore the outskirts", "You explore the outskirts of the Longyearbyen looking for signs of resources buried under the ice and stone.  ", 1)
var encounterC3_part1_option2 = Option.new("Venture into to town", " You venture into town and take rest a bit before heading on your way again.  ")
var encounterC3_part1 = EncounterPart.new("You approach Longyearbyen, one of the only permanent settlements in Svalbard.  This area has already been explored pretty thoroughly so it may be good to take some time to rest in town, but the resources here are also some of the richest on the island.  It'd may be good to take another look.  ", [encounterC3_part1_option1, encounterC3_part1_option2])

var encounterC3_part2_option1 = Option.new("Be thorough, catalog all of the outcroppings in the area and take some samples as well", "You spend the next two days making through topological maps of the area and documenting the locations of each coal outcropping you find.  You take soil samples from some of the glacial rivers until you're nearly out of sample bags.  ")
var encounterC3_part2_option2 = Option.new("Be quick, Splitsbergen is a large place and the SNSK probably already has good data on this area.  ", "You make some quick sketches of this area's topology to compare against the SNSK's data later.  ")
var encounterC3_part2 = EncounterPart.new("You come across an outcropping of coal in the hills near Longyearbyen.  There may be more outcroppings nearby to indicate a rich vein.  You could spend some time to sketch especially detailed topology of this area, but it will take some time", [encounterC3_part2_option1, encounterC3_part2_option2])

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
var encounterB6_part1_option1 = Option.new("Search for walruses down the coast", "You look for a path down the glacier to the coast, carefully making your way across the icy crevices until you reach a less steep portion of the coastal cliffs.  You make your way down the rocky path until you reach the frigid waters.", 1)
var encounterB6_part1_option2 = Option.new("Stick to highlands - whatever animals or resources might be down the coast aren't worth risking your life", "You continue along the highlands, avoiding the glacial crevices.  You don't find any animals")
var encounterB6_part1 = EncounterPart.new("The glaciers of northern Splitsberg are breathtaking with cascading shades of blue and turqoise.  The rocky cliffsides cast dramatic shadows over the glacial fissures.  The path down to the coast is a bit treacherous, but you may be able to find a pod of walruses resting on ice flows below.  ", [encounterB6_part1_option1, encounterB6_part1_option2])

var encounterB6_part2_option1 = Option.new("Swim out to the ice flows to pet a walrus", "Against your better judgement, you leap into the frigid waters and try to swim out to the walruses.  

This goes quite poorly.  

In the icy water, your body quickly begins to shut down and you lose consciousness.  ", -1, true)
var encounterB6_part2_option2 = Option.new("Admire the walruses from a distance", "You spend some time resting and drawing sketches of the glacier and walruses.  As you're preparing for the climb back up the glacier, a family of humpback whales breach amongst the ice flows.  ")
var encounterB6_part2 = EncounterPart.new("After considerable effort, you've reached the waters below the glacier.  After a bit more searching, you find a large pod of over a hundred walruses lounging on the rocky shore and the ice flows", [encounterB6_part2_option1, encounterB6_part2_option2])

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
var encounterD4_part1_option1 = Option.new("Venture over the peaks", "You methodically make your up the mountain ridge until you've crested the ridge.  From up this high, you have a clear view of the regions topology.  You don't spot any new mineral outcrops, but the views from this high are breathtaking.  
You take a bit to take in the views as you touch up your cartography drawings.  ")
var encounterD4_part1_option2 = Option.new("Venture through the canyons", "", 1)
var encounterD4_part1 = EncounterPart.new("You've finished your work for the cartograpy of this area, but to continue on, you'll have make your way through the mountains.  ", [encounterD4_part1_option1, encounterD4_part1_option2])

var encounterD4_part2_option1 = Option.new("Turn back", "You return the way you came.  ", 0)
var encounterD4_part2_option2 = Option.new("Continue through the canyons", "You decide to continue through the canyons.  You trudge on through the deep snow as the path begins to narrow.  ", 2)
var encounterD4_part2 = EncounterPart.new("You make your way throuh the twisting canyons until you come upon an old campire built in an stone alcove protected from the wind.  You don't see anyone nearby, but the campfire looks like it was put out recently.  ", [encounterD4_part2_option1, encounterD4_part2_option2])

var encounterD4_part3_option1 = Option.new("Turn back", "You return the way you came.  ", 0)
var encounterD4_part3_option2 = Option.new("Venture into the frozen cave", "You make your way into the dark cave, ascending slightly towards the distant light source.  You begin to pull yourself up a small ledge when your boot slips on slick rock.  

You tumble backward with a yelp and land on your back.  

As you re-orient yourself, you are suddenly keenly aware of a deep, ragged panting noise coming from ahead in the cave.
", 3)
var encounterD4_part3 = EncounterPart.new("The canyon terminantes in a cave with steep cliffs on both sides.  The cave is large enough to walk through and you can see a distant shimmer of light at the far end.  To your left, half-submerged in the snow, an unrecognizeable carcass lies half eaten.  A few scattered bones lay near the cave entrance.  ", [encounterD4_part3_option1, encounterD4_part3_option2])

var encounterD4_part4_option1 = Option.new("Make a dash for the light at the end of the cave", 
"It's too late for that, the polar bear is upon you in an instant.  

You become part of the circle of life", -1, true)
var encounterD4_part4_option2 = Option.new("Retreat back the way you came", 
"It's too late for that, the polar bear is upon you in an instant.  

You become part of the circle of life", -1, true)
var encounterD4_part4_option3 = Option.new("Try to hide", 
"It's too late for that, the polar bear is upon you in an instant.  

You become part of the circle of life", -1, true)
var encounterD4_part4_option4 = Option.new("Try to fight",
"Yeah, sure, good luck with that.  

One thousand pounds of artic fury crashes into you.  An adult male polar bear, feeling particularly cranky after being awoken from its nap, overpowers you an instant.  

You were, in fact, not built different.  ", -1, true)
var encounterD4_part4 = EncounterPart.new("The ragged breathing nears and you hear a deep growl.  You have a only a moment to consider your options.  ", [encounterD4_part4_option1, encounterD4_part4_option2, encounterD4_part4_option3, encounterD4_part4_option4])

var encounterD4 = Encounter.new("D4", [encounterD4_part1, encounterD4_part2, encounterD4_part3, encounterD4_part4])

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
	"F": 6,
	
	1: "A",
	2: "B",
	3: "C",
	4: "D",
	5: "E",
	6: "F"
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
	reveal_map()
	can_move = true
	$RichTextLabel.newline()
	await add_text_line("It's time to move on")
	if are_all_enconters_complete():
		get_tree().change_scene_to_file("res://scenes/VictoryScreen.tscn")
		
	
func reveal_map():
	var map_tile = $Map.find_child(player_pos)
	map_tile.hide()
	$MapRevealSoundEffect.play()
	
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
			if option.results_in_death == true:
				await get_tree().create_timer(3).timeout
				get_tree().change_scene_to_file("res://scenes/death_screen.tscn")
				return
			elif current_encounter.encounter_part_index != -1: 
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
	$TypingSoundEffect.play()
	$RichTextLabel.newline()
	for letter in text_line:
		$RichTextLabel.add_text(letter)
		scroll_text_to_bottom()
		var wait_time = rng.randf_range(0.001, 0.005)
		await get_tree().create_timer(wait_time).timeout
	scroll_text_to_bottom()
	$TypingSoundEffect.stop()
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
	
	
