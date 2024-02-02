extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_btn_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/match.tscn")


func _on_btn_characters_pressed():
	var char_menu = load("res://Scenes/characters_menu.tscn").instantiate()
	get_tree().current_scene.add_child(char_menu)

func _on_btn_quit_pressed():
	get_tree().quit()
