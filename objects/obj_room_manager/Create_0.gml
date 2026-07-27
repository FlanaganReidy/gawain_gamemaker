dungeonCameraStruct = {
    screen0:{
        minX:0,
        minY:0,
        maxX:160,
        maxY:144
    }
}

currentRoom = struct_get(dungeon_one_structs.roomStruct, room_get_name(room));
currentPuzzleGroup = struct_get(dungeon_one_structs.puzzleStruct, room_get_name(room))


currentTilemap = layer_tilemap_get_id("Col")
tile_width = tilemap_get_tile_width(currentTilemap);
global.tile_size_ = tile_width
debug_event(room_width)
//create mp grid for pathfinding
global.grid = mp_grid_create(0,0,room_width/8, room_height/8, 8, 8)

//add current room's collision tilemap to mp grid
var _max_x = tilemap_get_width(currentTilemap);
var _max_y = tilemap_get_height(currentTilemap);

for(var i = 0; i < _max_x; i++){
    for(var j = 0; j < _max_y; j++){
        var tile_data = tilemap_get(currentTilemap, i, j)
        if(tile_data > 0){
            mp_grid_add_cell(global.grid,i,j);
        }
    }
}




struct_foreach(currentRoom, function(key, item){
    _screen_bounds = get_room_camera_bounds_from_tiles
    (item.width, 
    item.height, 
    item.offSetX, 
    item.offSetY, 
    currentTilemap);
    
   struct_set(dungeonCameraStruct, key, _screen_bounds)
}) 

currentScreen = dungeonCameraStruct.screen0