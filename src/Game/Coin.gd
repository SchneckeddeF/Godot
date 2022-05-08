extends Sprite
var score = 0
onready var text = get_parent().get_node("Control/TextEdit")
var score_text = "$ %s"
var ac_score = score_text % score
func _process(delta):
	ac_score = score_text % score
	text.text = ac_score
func _on_TruheArea_body_entered(body):
	score += 1
	queue_free()
