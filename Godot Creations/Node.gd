extends Node2D

class_name SimulationNode

var radiusFactor = 3
var nodeStrength = 1
var colour := Color.blue
var radius
var selected: bool

func _init(strength = 1, col = Color.blue):
	nodeStrength = strength
	colour = col
	position = Vector2.ZERO
	radius = (nodeStrength + 4) * radiusFactor + 15

func _process(_delta):
	update()

func _draw():
	draw_custom()

func draw_custom():
	if (selected):
		draw_circle(Vector2.ZERO, radius + 2, Color.white)
	else:
		draw_circle(Vector2.ZERO, radius + 1, Color.white)
	draw_circle(Vector2.ZERO, radius, colour)
