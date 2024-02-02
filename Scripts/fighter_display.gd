extends HBoxContainer
class_name FighterDisplay

@onready
var win_bar = $WinsBarContainer/WinBar

@onready
var name_label: Label = $DetailsContainer/Name

func set_fighter(fighter: Character):
	_ensure_loaded()
	name_label.text = fighter.name

func _ensure_loaded():
	if !win_bar:
		win_bar = $WinsBarContainer/WinBar
		name_label = $DetailsContainer/Name
