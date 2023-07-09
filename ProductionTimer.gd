extends Timer

signal product_produced(provided_product)

var tier = 1
var product = null
var cost = 5.0
var faux_product = preload("res://Products/Product.tscn")

func select_product(input_product):
	product = input_product

func produce_product():
	var produced_product = product.instantiate()
	product_produced.emit(produced_product)
	
func _on_timeout():
	select_product(faux_product)
	produce_product()
