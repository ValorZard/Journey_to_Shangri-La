extends Control

var chap_button = preload("res://dialogic/Menus/DialogicMenu_ChapterButton.tscn")
var chapters = ["Bees","Honey","Hive","Queen","Workers","Wasps","Test","Test1","Test2","Test3","Test4","Test5","Test6","Test7"]

onready var ChapterContainer = $Scroll/Chapters
onready var MenusContainer = get_parent().get_parent().get_parent()
#var chapter_path : String

################################################################################
##								PUBLIC
################################################################################

func open() -> void:
	show()
	generate_chapters()

func generate_chapters() -> void:
	for child in ChapterContainer.get_children():
		child.queue_free() 
		
	for i in range(0, chapters.size()):
		var cb = chap_button.instance()
		cb.set_text(chapters[i])
		ChapterContainer.add_child(cb)
		cb.connect("pressed", self, "on_Button_pressed")

################################################################################
##								PRIVATE
################################################################################

func _ready() -> void:
	hide()
	
func on_Button_pressed() -> void:
	# Might need to set the path name here
	pass
