extends RayCast3D

# refs
@onready var hands := $"../Hand/PickUpPosition"


func _input(event):
	if Input.is_action_just_pressed("PickUp") and owner.obj_holding != null:
		put_down()
	

func put_down():
	var col = get_collider()
	if col.has_node("PlacementSlot"):
		var put_down = col.get_node("PlacementSlot").try_put_down(owner.obj_holding)
		if put_down:
			owner.obj_holding = null
			hands.get_child(0).queue_free()

###
#@onready var pickup_position := $"../Hand/PickUpPosition"
#
## logic
#var looking_at = null
#var can_pickup = true;
#
#
#func _process(delta):
#	var col = get_collider()
#
#	if col != looking_at:
#		if col and col.has_node("Highlightable"):
#				col.get_node("Highlightable").targeted = true
#		if looking_at and looking_at.has_node("Highlightable"):
#				looking_at.get_node("Highlightable").targeted = false
#		looking_at = col
#
#
#func _input(event):
#	if Input.is_action_just_pressed("PickUp"):
#		if can_pickup and looking_at and looking_at.has_node("Pickupable"):
#			looking_at.get_node("Pickupable").pickup(pickup_position)
#			can_pickup = false