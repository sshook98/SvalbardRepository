extends Node2D

var rng = RandomNumberGenerator.new()
var last_message_is_help_message = false
var ready_for_input = true
var text_dict = {
	"prompt": """
	Trudging along the frozen tundra, the immense chasms cast the glacial fissures into brilliant shades of turquoise.  
	Amidst the beauty, the treacherous terrain serves as a reminder that one fell step could spell an icy grave.  
	
	You'll need to get across the glacier, but how?
	1. Make your way down the fissures to the coastline
	2. Traverse along the glacial ridge and cross the fissues
	3. Head inland, colder, but hopefully the terrain will be more forgiving
	
	""",
	"1": """
	You make your way down the fissures to the coastline. 
	
	A polar bear is returning from an unnsuccessful hunt.  
	
	It looks pretty tired, so you toss him some of your food, just to make sure it doesn't decide to follow you.
	
	Lose 1 food
	""",
	"2": """ 
	You leap across the fissures, looking for sections where they narrow and have less sheer drops.  
	
	After awhile, your legs began to cramp and you have to rest.  
	
	Lose 1 day of time.  
	""",
	"3": """
	You head inland and up into the hills.   
	
	Lose 1 fuel
	""",
}

#meowdy

# Called when the node enters the scene tree for the first time.
func _ready():
	add_text_line(text_dict["prompt"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
#func _on_line_edit_text_submitted(new_text):
	#$RichTextLabel.newline()
	#$RichTextLabel.add_text(new_text)
	#$LineEdit.clear()
	#print(new_text)
	#pass # Replace with function body.
	#
	

func _on_line_edit_text_changed(input_text):
	if input_text == "":
		return # Removing this causes infinite recursion
	elif ready_for_input == false:
		$LineEdit.clear()
		return
	elif (input_text == "1" or input_text == "2" or input_text == "3"):
		var new_text = text_dict[input_text]
		add_text_line(new_text)
		last_message_is_help_message = false
	elif last_message_is_help_message == false:
		add_text_line("Enter 1, 2, or 3")
		last_message_is_help_message = true
		
	$LineEdit.clear()
	
func add_text_line(text_line):
	ready_for_input = false
	$RichTextLabel.newline()
	for char in text_line:
		$RichTextLabel.add_text(char)
		scroll_text_to_bottom()
		var wait_time = rng.randf_range(0.001, 0.005)
		await get_tree().create_timer(wait_time).timeout
	scroll_text_to_bottom()
	ready_for_input = true
	

func scroll_text_to_bottom():
	var lineCount = $RichTextLabel.get_line_count()
	#print(lineCount)
	$RichTextLabel.scroll_to_line(lineCount)
	
