if obj_room_manager.currentScreen == other.targetScreen{
    return;
} else if other.targetScreen == "screen0"{
    obj_room_manager.currentScreen = obj_room_manager.dungeonCameraStruct.screen0
} else if other.targetScreen == "screen1"{
    obj_room_manager.currentScreen = obj_room_manager.dungeonCameraStruct.screen1;
}
