extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btnRESUME_pressed():
	pass # Replace with function body.

func _on_btnNEWGAME_pressed():
	get_tree().change_scene("res://First Stage/Stage 1.tscn")

func _on_btnLOADGAME_pressed():
	pass # Replace with function body.

func _on_btnOPTION_pressed():
	pass # Replace with function body.

func _on_btnQUIT_pressed():
	get_tree().quit()

