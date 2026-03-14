
//revisit this we want some things to always be lower than gawain
with(all)
{
    depth = -bbox_bottom;
}

move_dungeon_room(
obj_room_manager.currentScreen.minX, 
obj_room_manager.currentScreen.minY, 
obj_room_manager.currentScreen.maxX, 
obj_room_manager.currentScreen.maxY, 
obj_player)
