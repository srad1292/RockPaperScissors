extends HBoxContainer

@onready
var fighter1: FighterDisplay = $FighterDisplay

@onready
var fighter2: FighterDisplay = $FighterDisplay2



func _on_match_manager_set_active_fighters(c1, c2):
	if !fighter1 or !fighter2:
		fighter1 = $FighterDisplay
		fighter2 = $FighterDisplay2
	
	fighter1.set_fighter(c1)
	fighter2.set_fighter(c2)
