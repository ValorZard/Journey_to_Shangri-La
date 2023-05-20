extends Control

class_name PlayerNameInput

var player_name

# Displays confirmation button once text is entered
func _on_Input_text_changed(new_name : String):
	player_name = new_name
	$ConfirmButton.disabled = false
	
# Sets the character's name and hides itself
func _on_ConfirmButton_pressed():
	Dialogic.set_variable("YOUR NAME", player_name)
	hide()
	
