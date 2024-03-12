extends TileMap

const GRID_SIZE = 9
var terrain_dict = {}
var object_dict = {}


# Terrain, Objects, Selection, Lighting
func _ready():
	for x in GRID_SIZE:
		for y in GRID_SIZE:
			terrain_dict[str(Vector2(x,y))] = {
				"Type": "Dirt"
			}
			set_cell(0, Vector2(x,y), 0, Vector2i(0,0))


func _process(delta):
	var tile = local_to_map(get_global_mouse_position())
	
	if terrain_dict.has(str(tile)):
		set_cell(2, tile, 1, Vector2i(4,1))
