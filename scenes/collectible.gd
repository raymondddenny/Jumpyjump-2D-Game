extends Area2D

@onready var game_manager = %GameManager




func _on_body_entered(body):
	#Check if entered is the character
	if(body.name == "CharacterBody2D"):
		#destroy the collectible
		queue_free()
		game_manager.add_point()
