class_name State_Run extends State

@export var move_speed : float = 100.0
@onready var idle: State_Idle = $"../Idle"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# what happens when the Player enters this State
func Enter() -> void:
	player.UpdateAnimation("run")
	pass
	
# what happens when the PLayer exits this State
func Exit() -> void:
	pass
	
# what happens during the _process update in this State
func Process( _delta : float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("run")
	
	return null

# what happens during the _physics_process update in this State
func Physics( _delta : float) -> State:
	return null

# what happens with input events in this State	
func HandleInput ( _event : InputEvent ) -> State:
	return null
