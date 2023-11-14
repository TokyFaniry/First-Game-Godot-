extends CanvasLayer

signal start_game

func show_message(text): 
	$message.text=text
	$message.show()
	$MessageTimer.start()
 
func show_game_over(): 
	show_message("Game Over")
	await $MessageTimer.timeout
	
	$message.text= "Do the best"
	$message.show()
	
	await get_tree().create_timer(1.0).timeout
	$StartBoutton.show()

func update_score(score): 
	$score.text=str(score)




func _on_start_boutton_pressed():
	$StartBoutton.hide()
	start_game.emit()

	


func _on_message_timer_timeout():
	$message.hide()
