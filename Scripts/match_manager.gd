extends Control

signal set_active_fighters(c1: Character, c2: Character)


func _on_characters_loaded(characters):
	if(characters.size() < 2):
		print("Not enough fighters for a match!")
	else:
		set_active_fighters.emit(characters[0], characters[1])
