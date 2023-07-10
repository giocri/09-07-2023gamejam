extends Control
var base_cost;
var current_cost;
var cost_curve;
var resurce_pool;
var level;
var max_level
var ready_to_uograde=true;

signal state_changed(newstate:bool);
signal upgrade_purchased();
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setup(base_cost,cost_curve,max_level,resurce_pool):
	base_cost=base_cost;
	cost_curve=cost_curve;
	max_level=max_level;
	resurce_pool=resurce_pool;
	level=1;
	calculate_cost();

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var latest_check=check_cost();
	
	if(latest_check!=ready_to_uograde):
		ready_to_uograde=latest_check;
		state_changed.emit(ready_to_uograde);
		
	
func check_cost():
	var result=true;
	for i in current_cost:
		result=resurce_pool.has_resurce(i.resurce, i.amount);
	return result;
	
	
	
func calculate_cost():
	var cost_multiplier=cost_curve.cost(level);
	for i in base_cost:
		var tmp= i.amount*cost_multiplier;
		
		
func _on_button_pressed():
	if(check_cost()):
		for i in current_cost:
			resurce_pool.consume(i.resurce, i.amount);
		upgrade_purchased.emit();
