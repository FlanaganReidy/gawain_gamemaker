if obj_room_manager.currentScreen == other.targetScreen{
    return;
} else {
    obj_room_manager.currentScreen = struct_get(obj_room_manager.dungeonCameraStruct, other.targetScreen)
    respawn_x = x;
    respawn_y = y;
}
