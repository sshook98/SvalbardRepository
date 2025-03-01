extends Control

var ready_for_input = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(GlobalVars.days)
	await get_tree().create_timer(1).timeout
	ready_for_input = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _unhandled_input(event):
	if event is InputEventKey and ready_for_input == true:
		if (event.pressed == false):
			get_tree().change_scene_to_file("res://scenes/game_manager.tscn")
		
