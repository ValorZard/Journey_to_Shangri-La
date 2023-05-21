extends Control

var chap_button = preload("res://dialogic/Menus/DialogicMenu_ChapterButton.tscn")
var chapters = []

onready var ChapterContainer = $Scroll/Chapters
onready var MenusContainer = get_parent().get_parent().get_parent()
onready var file = "res://dialogic/ChapterNames.txt"

################################################################################
##								PUBLIC
################################################################################

func open() -> void:
	show()
	read_file(file)
	generate_chapters()

# Reads timeline names from ChapterNames.txt into an array
func read_file(file_name : String) -> void:
	var f = File.new()
	f.open(file_name, File.READ)
	while not f.eof_reached():
		var line = f.get_line()
		chapters.append(line)
	
	f.close()

# Generates chapters in order of which they appear in ChapterNames.txt
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
	
# Detects if a button was pressed
func _chapter_pressed(chap_name : String) -> void:
	_load_chapter(chap_name)

# Loads corresponding chapter and clears list of timeline names
func _load_chapter(chap_name : String) -> void:
	chapters = []
	MenusContainer.resume_game()
	
	Dialogic.change_timeline(chap_name)
	var dialog = Dialogic.start()
	MenusContainer.add_game_node(dialog)
	hide()
