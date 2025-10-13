with(all)
{
    depth = -bbox_bottom;
}

if (place_meeting(x,y, obj_movement_trigger)){

    movement_state = "shallow_water"

} else {
    movement_state = "default";
}

move_dungeon_room(
obj_room_manager.currentScreen.minX, 
obj_room_manager.currentScreen.minY, 
obj_room_manager.currentScreen.maxX, 
obj_room_manager.currentScreen.maxY, 
obj_player)
