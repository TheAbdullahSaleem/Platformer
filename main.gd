extends Node
var score : int = 0
# Remove the find_child from up here so it doesn't run too early
var menu: Node = null
func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func trigger_game_over():
	# We search for the child NOW, right when game over happens
	menu = get_tree().current_scene.find_child("Gameovermenu", true, false)
	if menu != null:
		menu.show()             # Show the overlay menu
		get_tree().paused = true # Pause all gameplay behind it
	else:
		print("Error: Could not find a node named 'GameOverMenu' in the scene tree!")

func _on_button_pressed() -> void:
	get_tree().paused = false         
	get_tree().reload_current_scene() 
func coin_add():
	score += 1

	
