extends Control

signal newNodeRequested
signal nodeRemovalRequested

func _ready():
	$"Creation Block/Add Node".connect("pressed", self, "on_AddNode_pressed")
	$"Creation Block/Remove Node".connect("pressed", self, "on_RemoveNode_pressed")

func on_AddNode_pressed():
	emit_signal("newNodeRequested", $"Creation Block/Node Strength".currentValue,
				$"Creation Block/Colour Chooser/NodeColour".color)

func on_RemoveNode_pressed():
	emit_signal("nodeRemovalRequested")


