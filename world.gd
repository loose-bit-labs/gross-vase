extends Node3D

var gross_vase = preload("res://gross_vase.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _input(event):
	if event.is_action_pressed("ui_accept"):
		var vase = gross_vase.instantiate()
		vase.position = 4 * Vector3(randf(), 2, randf()) - Vector3(2,0,2)
		var rigid = vase.find_child("gross_vase-rigid")
		rigid.angular_velocity = 6.6 * Vector3(randf(), randf(), randf())
		add_child(vase)
