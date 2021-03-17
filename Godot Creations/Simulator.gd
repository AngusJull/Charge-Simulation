extends Node2D

var maxItterations = 20
#Creating a variable for an image, and imagetexture to conver the image into
var screen
var screenTexture
#Nodes will store the instantiated nodes in the game
var nodes = []
#Will store a copy of nodes when the simulation is running to stop changes to the data
var nodesCopy = []

var running = false
var threadsFinished = 0
var progress = 0
#Stores the number of columns that have been filled so far
var columnsFilled = 0

#Mutex for threadsFinsihed
var tfMutex
#Mutex for columnsFilled
var cfMutex 

var thread1
var thread2
var thread3

var time1


# Called when the node enters the scene tree for the first time.
func _ready():
	screen = Image.new()
	screenTexture = ImageTexture.new()
	createScreen()
	createScreenTexture()
	
	tfMutex = Mutex.new()
	cfMutex = Mutex.new()
	thread1 = Thread.new()
	thread2 = Thread.new()
	thread3 = Thread.new()
	
# warning-ignore:return_value_discarded
	$"/root/MainScene/UI/Simulation Block/Simulate Button".connect("startSimulation", self, "on_startSimulation")
# warning-ignore:return_value_discarded
	$"/root/MainScene/UI/Simulation Block/Clear Screen".connect("pressed", self, "on_Clear_pressed")

func _process(_delta):
	if (running):
		if (threadsDone()):
			running = false
			thread1.wait_to_finish()
			thread2.wait_to_finish()
			thread3.wait_to_finish()
			
			screen.unlock()
			#Creating the new texture and updating the draw function
			createScreenTexture()
			update()
			print(float(OS.get_ticks_msec() - time1) / 1000.0)
			progress = 100
		else:
			#Screen width multiplied by 3, since each thread (which there are three of) reports each column once
			progress = (columnsFilled / float((OS.window_size.x - 68) * 3)) * 100
	

func on_startSimulation():
	if (running):
		return
	time1 = OS.get_ticks_msec()
	#Getting the list of nodes
	nodes = $"..".nodes
	copyNodes()
	#Deselecting the node which is selected
	if ($"..".selectedNode != null):
		$"..".selectedNode.selected = false
		$"..".selectedNode = null
	#Resetting the screen
	createScreen()
	#Locking the screen so it can be written to, drawing on the screen, then unlocking it
	screen.lock()
	threadsFinished = 0
	columnsFilled = 0
	progress = 0
	multithreadedDraw()
	

#Partitions the screen into vertical elements, then starts two threads which split up the partitions.
func multithreadedDraw():
	running = true
	if (nodesCopy.size() != 0):
		#The 68 represents half the sidebar size, meaning the texture will go slightly over.
		var screenWidth = OS.window_size.x - 68
		var screenHeight = OS.window_size.y
		#Starting threads, passing data as a single array
		thread1.start(self, "threadCalculatePixels", [screenWidth, screenHeight, 3, 0])
		thread2.start(self, "threadCalculatePixels", [screenWidth, screenHeight, 3, 1])
		thread3.start(self, "threadCalculatePixels", [screenWidth, screenHeight, 3, 2])

#Thread function, arguments are [0] -> screen width, [1] -> screen height, [2] -> number of threads, [3] -> place (how many pixels to offset by)
#Skips the number of threads in the y direction every itteration, meaning that each thread should fill one pixel in a 1x3 vertical line
func threadCalculatePixels(args):
	for x in range(0, args[0]):
		for y in range(args[3], args[1], args[2]):
			screen.set_pixel(x, y, calculatePixel(Vector2(x, y)))
		cfMutex.lock()
		columnsFilled += 1
		cfMutex.unlock()
	tfMutex.lock()
	threadsFinished += 1
	tfMutex.unlock()

func threadsDone():
	if (threadsFinished == 3):
		return true

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
	if (nodesCopy.size() < 1):
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
		if ((position.x > OS.window_size.x || position.y > OS.window_size.y) || (position.x < 0 || position.y < 0)):
			break
	#Returns nothing if no node is found 
	return Color(0.0, 0.0, 0.0, 0.0)

#Loops through the pixels on the screen and sets their colour to the returned value of calculatepixel
func drawScreen():
	if (nodesCopy.size() != 0):
		for y in range(0, screen.get_height()):
			#The constant represents the sidebar size
			for x in range(0, screen.get_width() - 136):
				screen.set_pixel(x, y, calculatePixel(Vector2(x, y)))

#Calculates the net force acting on a pixel from the nodes, divides the distance vector by 1000 to make distances reasonable
func calculateNetForce(pos: Vector2) -> Vector2:
	var netForce = Vector2(0, 0)
	for node in nodesCopy:
		var vectorTo = (node.position - pos) / 1000.0
		if (vectorTo.length_squared() == 0):
			continue
		netForce += vectorTo.normalized() * (node.nodeStrength / (vectorTo.length_squared()))
	return netForce

#Calculates which node is closest
func closestNode(pos: Vector2) -> SimulationNode:
	var closestNode = nodesCopy[0]
	var distance = nodesCopy[0].position.distance_squared_to(pos)
	for node in nodesCopy:
		var dist = node.position.distance_squared_to(pos)
		if (dist < distance):
			closestNode = node
			distance = dist
	return closestNode

func copyNodes():
	var temp
	nodesCopy.clear()
	for node in nodes:
		nodesCopy.push_back(SimulationNode.new(node.nodeStrength, node.colour))
		temp = nodesCopy.back()
		temp.position = node.position
		temp.visible = false
