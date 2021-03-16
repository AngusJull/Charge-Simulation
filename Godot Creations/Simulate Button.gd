extends Button
#Signal is sent out when the button is clicked to start the simulation
signal startSimulation

func _ready():
	connect("button_up", self, "button_up")

func button_up():
	emit_signal("startSimulation")
