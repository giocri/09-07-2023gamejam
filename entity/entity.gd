extends Control
var resurcepool_in;
var resurcepool_out;
var resurcepool_upgrades;
var upgrades=[];
var inputs= [];
var outputs=[];
var cycle_duration;
var cycle_position;
var production_multiplier;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	cycle_position+=delta
	if(cycle_position>=cycle_duration):
		cycle_position%=cycle_duration;
		var ready=true;
		for i in inputs:
			ready=resurcepool_in.has_resurce(i.resurce, i.amount*production_multiplier);
		if(ready):
			for i in inputs:
				resurcepool_in.consume(i.resurce, i.amount*production_multiplier);
			for i in outputs:
				resurcepool_out.add(i.resurce, i.amount*production_multiplier);
