extends VehicleBody3D

@onready var back_r = $"Back-r"
@onready var front_r = $"Front-r"
@onready var back_l = $"Back-l"
@onready var front_l = $"Front-l"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		back_r.engine_force = 18000
		back_l.engine_force = 18000
	else:
		back_r.engine_force = 0
		back_l.engine_force = 0
	
	var direction = Input.get_action_strength("ui_left") - Input.get_action_strength("ui_right")
	var direction_in_deg = direction * 0.3
	
	front_r.steering = direction_in_deg
	front_l.steering = direction_in_deg		
