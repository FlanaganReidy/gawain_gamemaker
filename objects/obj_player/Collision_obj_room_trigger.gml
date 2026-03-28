if obj_room_manager.currentScreen == other.targetScreen{
    return;
} else if other.targetScreen == "screen0"{
    obj_room_manager.currentScreen = obj_room_manager.dungeonCameraStruct.screen0
    respawn_x = x;
    respawn_y = y;
} else if other.targetScreen == "screen1"{
    obj_room_manager.currentScreen = obj_room_manager.dungeonCameraStruct.screen1;
    respawn_x = x;
    respawn_y = y;
}
