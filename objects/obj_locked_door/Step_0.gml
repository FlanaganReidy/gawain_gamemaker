if (place_meeting(x+collision_offset_x,y+collision_offset_y, obj_player) && obj_player.small_keys > 0){
    if(alarm[0] <= 0){
        alarm[0] = 30
    }
}