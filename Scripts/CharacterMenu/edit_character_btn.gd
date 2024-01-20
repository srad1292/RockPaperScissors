extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_item_list_item_selected(index):
	self.disabled = false


func _on_item_list_items_unselected():
	self.disabled = true
