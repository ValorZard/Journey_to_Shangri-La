extends Control

signal pressed(chap_name)

################################################################################
##								PUBLIC
################################################################################

# Changes the displayed text of the button
func set_text(chapter_name : String) -> void:
	$Label.set_text(chapter_name)
	
################################################################################
##								PRIVATE
################################################################################

func _on_ChapButton_pressed():
	emit_signal("pressed", $Label.text)

# Hover animations
#func _on_ChapButton_mouse_entered():
#	print("Mouse Hovering")
#	$Border/ColorRect.color = Color(126,220,230,255)


#func _on_ChapButton_mouse_exited():
#	print("Mouse Left")
#	$Border/ColorRect.color = Color(126,220,230,0)
