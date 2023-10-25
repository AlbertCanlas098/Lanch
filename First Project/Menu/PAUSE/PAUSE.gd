extends Control

var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_btnEXIT_pressed():
	get_tree().change_scene("res://Menu/Opening/Opening_Menu.tscn")


func _on_btnOPTION_pressed():
	get_tree().change_scene("res://Menu/INGAMEOPTION/INGAMEOPTION.tscn")


func _on_btnRESUME_pressed():
	self.is_paused = false

