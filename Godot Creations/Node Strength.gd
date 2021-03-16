extends Panel

var gameRunning: bool = false
var value: Label
var currentValue := 1

func _ready():
	get_node("Plus").connect("pressed", self, "on_Plus_pressed")
	get_node("Minus").connect("pressed", self, "on_Minus_pressed")
	value = get_node("Value")
	value.text = "1"

func on_Plus_pressed():
	if (currentValue < 3):
		currentValue += 1
		value.text = str(currentValue)

func on_Minus_pressed():
	if (currentValue > -3):
		currentValue -= 1
		value.text = str(currentValue)
