extends CanvasLayer


func show_message(text):
	$Message.text = text
	$Message.show()

func update_score(score):
	$ScoreLabel.text = str(score)
