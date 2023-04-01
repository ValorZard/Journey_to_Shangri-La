extends Control

export(String) var starting_timeline = "Intro"

################################################################################
##								PUBLIC
################################################################################

func open():
	show()
	yield(get_tree().create_timer(0.2), "timeout")
	$Buttons/NewGame_Button.grab_focus()

################################################################################
##								PRIVATE
################################################################################

func _ready():
	open()

func _on_NewGame_Button_pressed():
	get_parent().get_node("MenuMusic").playing = false
	var dialog = Dialogic.start("Hiroshi Prologue")
	dialog.layer = 0
	get_parent().add_game_node(dialog)
	$Buttons/NewGame_Button.release_focus()

func _on_LoadGame_Button_pressed():
	hide()
	get_parent().get_node("SubMenus").open_load_menu()

func _on_Settings_Button_pressed():
	hide()
	get_parent().get_node("SubMenus").open_settings_menu()

func _on_Credits_Button_pressed():
	hide()
	get_parent().get_node("SubMenus").open_credits_menu()

func _on_Quit_Button_pressed():
	get_tree().quit()
