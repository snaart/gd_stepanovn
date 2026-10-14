extends Node2D

@onready var player = get_node("Player")
@onready var asteroid = get_node("Asteroid")
@onready var enemy = $Enemy
@onready var enemies = $enemies
@onready var enemy_scene = preload("res://scenes/enemy.tscn")

var count := 10

func _ready() -> void:
	
	for i in count:
		var enemy_instance = enemy_scene.instantiate()
		enemy_instance.scale = Vector2(0.7,0.7)
		enemies.add_child(enemy_instance)


func _process(delta: float) -> void:
	for child in enemies.get_children():
		child.separate(enemies)
		child.cohesion(enemies)
		child.align(enemies)
