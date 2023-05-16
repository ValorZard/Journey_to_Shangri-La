extends Control

export (String) var chap_path

################################################################################
##								PUBLIC
################################################################################

# Changes the text on the button
func set_text(chapter_name : String) -> void:
	$Label.set_text(chapter_name)
	
################################################################################
##								PRIVATE
################################################################################

func _on_Button_pressed():
	pass
	#get_tree().change_scene(chap_path)
