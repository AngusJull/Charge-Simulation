extends Node2D

var maxItterations = 20
#Creating a variable for an image, and imagetexture to conver the image into
var screen
var screenTexture
#Nodes will store the instantiated nodes in the game
var nodes = []

var thread1
var thread2
var thread3

# Called when the node enters the scene tree for the first time.
func _ready():
	screen = Image.new()
	screenTexture = ImageTexture.new()
	createScreen()
	createScreenTexture()
	
	thread1 = Thread.new()
	thread2 = Thread.new()
	thread3 = Thread.new()
	
# warning-ignore:return_value_discarded
	$"/root/MainScene/UI/Simulate Button".connect("startSimulation", self, "on_startSimulation")
# warning-ignore:return_value_discarded
	$"/root/MainScene/UI/Clear Screen".connect("pressed", self, "on_Clear_pressed")

func on_startSimulation():
	#Getting the list of nodes
	nodes = $"..".nodes
	#Deselecting the node which is selected
	if ($"..".selectedNode != null):
		$"..".selectedNode.selected = false
		$"..".selectedNode = null
	#Resetting the screen
	createScreen()
	#Locking the screen so it can be written to, drawing on the screen, then unlocking it
	screen.lock()
	multithreadedDraw(20)
	screen.unlock()
	#Creating the new texture and updating the draw function
	createScreenTexture()
	update()

#Partitions the screen into vertical elements, then starts two threads which split up the partitions.
func multithreadedDraw(partitions):
	if (nodes.size() != 0):
		#The constant represents half the sidebar size, meaning the texture will go slightly over.
		var xWidth = int((OS.window_size.x - 68) / partitions)
		var screenHeight = OS.window_size.y
		var partition = 0
		while (partition < partitions):
			#Starting the first thread, incrementing the partition number
			thread1.start(self, "threadCalculatePixels", [Vector2(xWidth * partition, 0), Vector2(xWidth * partition + xWidth, screenHeight)])
			partition += 1
			#Checking if there are more partitions to take care of
			if (partition < partitions):
				thread2.start(self, "threadCalculatePixels", [Vector2(xWidth * partition, 0), Vector2(xWidth * partition + xWidth, screenHeight)])
				partition += 1
			if (partition < partitions):
				thread3.start(self, "threadCalculatePixels", [Vector2(xWidth * partition, 0), Vector2(xWidth * partition + xWidth, screenHeight)])
				partition += 1
			#Putting the main thread to work as well, since it would be idle anyways
			if (partition < partitions):
				threadCalculatePixels([Vector2(xWidth * partition, 0), Vector2(xWidth * partition + xWidth, screenHeight)])
				partition += 1
			#Joining the threads, as their work is now done. It would be nice to only have to do this after, but godot's support for multithreading is bad
			thread1.wait_to_finish()
			thread2.wait_to_finish()
			thread3.wait_to_finish()
		

#Thread function, coordinates is a 1d array with two vector2s in it. The method calculates pixels from the first
#vector2 to the second vector2, not inclusive of the second coordinates. The method writes to the "screen" immediately
func threadCalculatePixels(coordinates):
	for x in range(coordinates[0].x, coordinates[1].x):
		for y in range(coordinates[0].y, coordinates[1].y):
			screen.set_pixel(x, y, calculatePixel(Vector2(x, y)))

#Clears the screen
func on_Clear_pressed():
	createScreen()
	createScreenTexture()
	update()

#Called by the godot engine in update
func _draw():
	draw_texture(screenTexture, Vector2.ZERO)

#Creates the screen and fills it with the background colour. Accounts for the sidebar and does not draw there.
func createScreen():
	#Creating the screen.
	screen.create(OS.window_size.x, OS.window_size.y, false, 5)
	screen.fill(Color(0.0, 0.0, 0.0, 0.0))

#Function is basically useless but I don't want to rewrite it and it could be useful for scaling of the image later
func createScreenTexture():
	screenTexture.create_from_image(screen)

#Calculating where a pixel will end up, then colouring it depending on which node it touches
func calculatePixel(position: Vector2) -> Color:
	if (nodes.size() < 1):
		return Color(0.0, 0.0, 0.0, 0.0)
	
	var velocity = Vector2.ZERO
	var closestNode
	var closestNodeDst
	
	for itteration in range(1, maxItterations):
		closestNode = closestNode(position)
		closestNodeDst = closestNode.position.distance_to(position)
		
		if (closestNodeDst <= closestNode.radius):
			var colour = closestNode.colour
			colour.a = (float(maxItterations) - float(itteration) + 1.0) / float(maxItterations)
			return colour
		velocity += calculateNetForce(position)
		velocity = velocity.clamped(closestNodeDst)
		position += velocity
	#Returns nothing if no node is found 
	return Color(0.0, 0.0, 0.0, 0.0)

#Loops through the pixels on the screen and sets their colour to the returned value of calculatepixel
func drawScreen():
	if (nodes.size() != 0):
		for y in range(0, screen.get_height()):
			#The constant represents the sidebar size
			for x in range(0, screen.get_width() - 136):
				screen.set_pixel(x, y, calculatePixel(Vector2(x, y)))

#Calculates the net force acting on a pixel from the nodes, divides the distance vector by 1000 to make distances reasonable
func calculateNetForce(pos: Vector2) -> Vector2:
	var netForce = Vector2(0, 0)
	for node in nodes:
		var vectorTo = (node.position - pos) / 1000
		if (vectorTo.length_squared() == 0):
			continue
		netForce += vectorTo.normalized() * (node.nodeStrength / (vectorTo.length_squared()))
	return netForce

#Calculates which node is closest
func closestNode(pos: Vector2) -> SimulationNode:
	var closestNode = nodes[0]
	var distance = nodes[0].position.distance_squared_to(pos)
	for node in nodes:
		var dist = node.position.distance_squared_to(pos)
		if (dist < distance):
			closestNode = node
			distance = dist
	return closestNode
