extends Node2D

var rng = RandomNumberGenerator.new()
var text_dict = {
	"prompt": "Trudging along the frozen tundra, the immense chasms cast the glacial fissures into brilliant shades of turquose.  
	Amidst the beauty, the treacherous terrain serves as a reminder that one fell step could spell an icy grave.  ",
	"1": "Make your way down the fissures to the coastline",
	"2": "Traverse along the glacial ridge and cross the fissues",
	"3": "Head inland, colder, but hopefully the terrain will be more forgiving",
}



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
	elif (input_text == "1" or input_text == "2" or input_text == "3"):
		var new_text = text_dict[input_text]
		add_text_line(new_text)
	else:
		add_text_line("Enter 1, 2, or 3")
		print("N/A")
		
	$LineEdit.clear()
	
func add_text_line(text_line):
	$RichTextLabel.newline()
	for char in text_line:
		$RichTextLabel.add_text(char)
		var wait_time = rng.randf_range(0.01, 0.05)
		await get_tree().create_timer(wait_time).timeout
	
	
