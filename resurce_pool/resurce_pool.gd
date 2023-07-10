extends Control
var resurces=[];


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func has_resurce(resurce, amount):
	for i in resurces:
		if(i.name==resurce):
			if(i.amount>=amount):
				return true;
			else:
				return false;
	
	
func consume(resurce, amount):
	for i in resurces:
		if(i.name==resurce):
			i.remove(amount);
			return;


func add(resurce, amount):
	for i in resurces:
		if(i.name==resurce):
			i.add(amount);
			return;
