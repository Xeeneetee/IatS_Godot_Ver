class_name State extends Node

# Stores a reference for the player that this State belongs to
static var player : Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# what happens when the Player enters this State
func Enter() -> void:
	pass
	
# what happens when the PLayer exits this State
func Exit() -> void:
	pass
	
# what happens during the _process update in this State
func Process( _delta : float ) -> State:
	return null

# what happens during the _physics_process update in this State
func Physics( _delta : float) -> State:
	return null

# what happens with input events in this State	
func HandleInput ( _event : InputEvent ) -> State:
	return null
