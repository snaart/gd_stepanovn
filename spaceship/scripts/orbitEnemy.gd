extends Sprite2D

@onready var player: Node2D = get_node("../Player")

var radius: float = 150
var angular_speed: float = 2
var angle: float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	angle += angular_speed * delta
	position = player.position + Vector2(cos(angle), sin(angle)) * radius
	rotation = angle + PI
