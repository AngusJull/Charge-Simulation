extends Node2D
#List of all simulationNodes
var nodes = []
#This is the node currently being moved
var currentNode = null
#This is the last moved node
var selectedNode = null

func _ready():
	$"../UI".connect("newNodeRequested", self, "on_UI_NodeRequest")
	

func _process(_delta):
	if ((currentNode != null)):
		currentNode.position = get_global_mouse_position()
	pass

#Checks if the mouse is within the drawn radius of the node
func isNodeTouchingMouse(node: SimulationNode) -> bool:
	if (node.position.distance_to(get_global_mouse_position()) < node.radius):
		return true
	else:
		return false

#In here the currentNode can be changed
func _input(event):
	if(event.is_action_pressed("click")):
		for node in nodes:
			if (isNodeTouchingMouse(node)):
				currentNode = node
				#de-selecting the previous node
				if (selectedNode != null): selectedNode.selected = false
				#selecting the current node
				selectedNode = node
				node.selected = true
				break
	if(event.is_action_released("click")):
		currentNode = null
	if(event.is_action_pressed("ui_cancel") && (selectedNode != null)):
		#removing the slected node from the list of nodes
		nodes.erase(selectedNode)
		#deleting the node
		selectedNode.queue_free()
		#unselecting the node
		selectedNode = null

#Creates a new node with the parameters and returns it
func createNode(strength: int, colour: Color) -> SimulationNode:
	nodes.push_back(SimulationNode.new(strength, colour))
	add_child(nodes.back())
	return nodes.back()

"""When a node is requested, this creates the new node and then sets it's
position to that of the mouse"""
func on_UI_NodeRequest(strength, colour):
	createNode(strength, colour).position = Vector2(100, 100)
