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