roomStruct = 
{
    Room1: {
        screen0: {
                width:20, 
                height:18, 
                offSetX:0, 
                offSetY:0
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


array_foreach(dungeonScreenArray, function(item, index){
    _screen_bounds = get_room_camera_bounds_from_tiles
    (item.width, 
    item.height, 
    item.offSetX, 
    item.offSetY, 
    tilemap);
    
   struct_set(dungeonCameraStruct, $"screen{index}", _screen_bounds)
})

currentRoom = dungeonCameraStruct.screen0;