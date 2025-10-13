 roomStruct = 
{
    Room1: {
        screen0: {
                width:20, 
                height:18, 
                offSetX:0, 
                offSetY:0
                },
        screen1:{
                width:20, 
                height:18, 
                offSetX:0, 
                offSetY:16
        } 
    }
};

dungeonCameraStruct = {
    screen0:{
        minX:0,
        minY:0,
        maxX:160,
        maxY:144
    }
}

currentRoom = struct_get(roomStruct, room_get_name(room));

currentTilemap = layer_tilemap_get_id("Floor")
struct_foreach(currentRoom, function(key, item){
    _screen_bounds = get_room_camera_bounds_from_tiles
    (item.width, 
    item.height, 
    item.offSetX, 
    item.offSetY, 
    currentTilemap);
    
   struct_set(dungeonCameraStruct, key, _screen_bounds)
})

currentScreen = dungeonCameraStruct.screen1