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
func _on_ChapterButton_mouse_entered() -> void:
	print("Chapter Button hovered over: ",  $Label.text)
	$HoverAnimation.play("hover")

func _on_ChapterButton_mouse_exited() -> void:
	print("Chapter Button hovered over: ",  $Label.text)
	$HoverAnimation.play_backwards("hover")
