extends Control

var chap_button = preload("res://dialogic/Menus/DialogicMenu_ChapterButton.tscn")
var chapters = ["Intro","MC Prologue","Raj Love Event LA to Hawaii","Hawaii pt. 1 (revised)"]

onready var ChapterContainer = $Scroll/Chapters
onready var MenusContainer = get_parent().get_parent().get_parent()

################################################################################
##								PUBLIC
################################################################################

func open() -> void:
	show()
	generate_chapters()

# Generates chapters based on the text read from ChapterNames.txt
func generate_chapters() -> void:
	for child in ChapterContainer.get_children():
		child.queue_free() 
		
	for i in range(0, chapters.size()):
		var cb = chap_button.instance()
		cb.set_text(chapters[i])
		cb.set_name(chapters[i])
		cb.connect("pressed", self, "_chapter_pressed")
		ChapterContainer.add_child(cb)

################################################################################
##								PRIVATE
################################################################################

func _ready() -> void:
	hide()
	
# Changes the chapter
func _chapter_pressed(chap_name : String) -> void:
	_load_chapter(chap_name)

# Loads chapter based on whichever button was pressed
func _load_chapter(chap_name : String) -> void:
	MenusContainer.resume_game()
	
	Dialogic.change_timeline(chap_name)
	var dialog = Dialogic.start()
	MenusContainer.add_game_node(dialog)
	hide()
