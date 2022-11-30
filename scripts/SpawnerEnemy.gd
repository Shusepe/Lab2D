extends Node2D

var spawPositions = null

var Enemy = preload("res://scenes/EnemyKamikaze.tscn")

func _ready():
	randomize()
	spawPositions = $SpawnPositions.get_children()
	pass

func spawnEnemy():
	var index = randi() % spawPositions.size()
	var enemy = Enemy.instance()
	enemy.global_position = spawPositions[index].global_position
	add_child(enemy)
	pass

func _on_SpawTimer_timeout():
	spawnEnemy()
	pass
