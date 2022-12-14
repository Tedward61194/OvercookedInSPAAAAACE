extends RefCounted

#class_name PickupDB

enum {
	GREEN_CUBE,
	BLUE_CUBE,
	YELLOW_CUBE,
	RED_CUBE,
	DINOMITE,
	MISSILE_CASING,
	MISSILE_1_ASSEMBLED,
	MISSILE,
	ENERGY_CELL_EMPTY
}


var pick_up_scene = {
	GREEN_CUBE: load("res://assets/scenes/pickedups/GreenCube_Pickedup.tscn"),
	BLUE_CUBE: load("res://assets/scenes/pickedups/BlueCube_Pickedup.tscn"),
	YELLOW_CUBE: load("res://assets/scenes/pickedups/YellowCube_Pickedup.tscn"),
	RED_CUBE: load("res://assets/scenes/pickedups/RedCube_Pickedup.tscn"),
	DINOMITE: load("res://assets/scenes/pickedups/Dinomite_Pickedup.tscn"),
	MISSILE_CASING: load("res://assets/scenes/pickedups/Missile_Casing_Pickedup.tscn"),
	MISSILE_1_ASSEMBLED: load("res://assets/scenes/pickedups/Missile_1_Assembled_Pickedup.tscn"),
	MISSILE: load("res://assets/scenes/pickedups/Missile_Pickedup.tscn"),
	ENERGY_CELL_EMPTY: load("res://assets/scenes/pickedups/Energy_Cell_Empty_Pickedup.tscn")
}

var put_down_scene = {
	GREEN_CUBE: load("res://assets/scenes/prototype_blocks/GreenCube.tscn"),
	BLUE_CUBE: load("res://assets/scenes/prototype_blocks/BlueCube.tscn"),
	YELLOW_CUBE: load("res://assets/scenes/prototype_blocks/YellowCube.tscn"),
	RED_CUBE: load("res://assets/scenes/prototype_blocks/RedCube.tscn"),
	DINOMITE: load("res://assets/scenes/interactables/Dinomite.tscn"),
	MISSILE_CASING: load("res://assets/scenes/interactables/Missile_Casing.tscn"),
	MISSILE_1_ASSEMBLED: load("res://assets/scenes/interactables/Missile_1_Assembled.tscn"),
	MISSILE: load("res://assets/scenes/interactables/Missile.tscn"),
	ENERGY_CELL_EMPTY: load("res://assets/scenes/interactables/Energy_Cell_Empty.tscn")
}

var data = {}

func _init():
	_add_obj_data(GREEN_CUBE)
	_add_obj_data(BLUE_CUBE)
	_add_obj_data(YELLOW_CUBE)
	_add_obj_data(RED_CUBE)
	_add_obj_data(DINOMITE)
	_add_obj_data(MISSILE_CASING)
	_add_obj_data(MISSILE_1_ASSEMBLED)
	_add_obj_data(MISSILE)
	_add_obj_data(ENERGY_CELL_EMPTY)

func _add_obj_data(pickup_id : int):
	data[pickup_id] = PickupableData.new(pickup_id, pick_up_scene[pickup_id], put_down_scene[pickup_id])
