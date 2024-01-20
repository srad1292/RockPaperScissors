extends Node

signal characters_loaded(characters)

var characters = []

func _ready():
	var directory = DirAccess.open("res://Resources/Characters/")
	print(directory)
	if directory:
		_loadCharacters(directory)
		print("Character length ", characters.size())
		print("Characters: ")
		for c in characters:
			print(c.name)
		characters_loaded.emit(characters)
	else:
		print("error loading character directory")
		
func _loadCharacters(directory):
	print("In load characters")
	directory.list_dir_begin()
	var file_name = directory.get_next()
	print("File name: ", file_name)
	while file_name != "":
		if file_name.ends_with(".tres"):
			print("Getting character")
			var character = ResourceLoader.load("res://Resources/Characters/" + file_name)
			characters.append(character)
			print("Character length ", characters.size())
		file_name = directory.get_next()
		
