extends Control

signal newNodeRequested

func _ready():
	$"Add Node".connect("pressed", self, "on_AddNode_pressed")

func on_AddNode_pressed():
	emit_signal("newNodeRequested", $"Node Strength".currentValue,
				$"Colour Chooser/NodeColour".color)



