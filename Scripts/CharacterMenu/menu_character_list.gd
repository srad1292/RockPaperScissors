extends ItemList

signal items_unselected

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Menu Char List Exists")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_characters_loaded(characters):
	for c in characters:
		self.add_item(c.name)



func _on_btn_delete_pressed():
	for i in self.get_item_count():
		if self.is_selected(i):
			self.remove_item(i)
	self.deselect_all()
	items_unselected.emit()
