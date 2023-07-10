extends Control
var resurce_name;
var resurce_amount;
signal total_changed(new_total);
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func remove(amount):
	resurce_amount-=amount;
	total_changed.emit(resurce_amount);
func add(amount):
	resurce_amount+=amount;
	total_changed.emit(resurce_amount);
