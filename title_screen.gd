extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(GlobalVars.days)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _unhandled_input(event):
	if event is InputEventKey:
		if (event.pressed == false):
			get_tree().change_scene_to_file("res://game_manager.tscn")
		
