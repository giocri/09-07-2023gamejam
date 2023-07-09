extends Node2D

var producer = preload("res://Producer.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(producer)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
