extends CanvasLayer

func set_tower_preview(tower_type, mouse_position):
	var drag_tower = load("res://Scenes/Turrets/" + tower_type + ".tscn").instance()
	drag_tower.set_name("DragTower")
	drag_tower.modulate = Color("ad54ff3c")
	
	var control = Control.new()
	control.add_child(drag_tower, true)
	control.rect_position = mouse_position
	control.set_name("TowerPreview")
	add_child(control)
	move_child(get_node("TowerPreview"), 0)

func update_tower_preview(new_position, color):
	var tower_preview = get_node("TowerPreview")
	var drag_tower = tower_preview.get_node("DragTower")

	tower_preview.rect_position = new_position
	if drag_tower.modulate != Color(color):
		drag_tower.modulate = Color(color)
