extends Control


var is_paused = false setget set_is_paused
var master_bus = AudioServer.get_bus_index("Master")


onready var ControlVolumen = $CenterContainer/VBoxContainer/ControlesVolumen

func _unhandled_key_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused


func set_is_paused(value):
	print("cambio variable is paused a ")
	print(is_paused)
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
		
		
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("hola Menu Pausas")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Salir_pressed():
	get_tree().quit


func _on_MenuPausa_ready():
	Global.prevscene = get_tree().current_scene.filename
	print("prevscene")
	print(Global.prevscene)

func _on_Volumen_pressed():
	#print("pulsado volumen")
	
	ControlVolumen.visible = !ControlVolumen.visible 


func _on_Continuar_button_up():
	pass # Replace with function body.


	



func _on_HSliderVolumen_value_changed(value):
	if value != 0:
		AudioServer.set_bus_volume_db(master_bus,value)