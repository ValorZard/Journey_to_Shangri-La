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
