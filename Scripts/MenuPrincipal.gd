extends Control

onready var menuPausa = $MenuPausa
onready var animator = $MenuAnimator


# Called when the node enters the scene tree for the first time.
func _ready():
	menuPausa.is_paused = false
	yield(get_tree().create_timer(1), "timeout")
	animator.play("EnterMenu")


func _on_Salir_pressed():
	get_tree().quit()


func _on_Opciones_pressed():
	menuPausa.set_is_paused(true)


func _on_Comenzar_Paritida_pressed():
	get_tree().change_scene("res://Scenes/Tienda2d.tscn")


func _on_MenuPrincipal_ready():
	Global.prevscene = get_tree().current_scene.filename

