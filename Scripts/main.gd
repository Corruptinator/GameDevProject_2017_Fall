extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#set_process(true)
	pass

func _init():
	#_startup()
	pass

func _startup(d):
	var importer = load("res://Levels/Level_001.tscn").instance()
	d.add_child(importer)
	pass
