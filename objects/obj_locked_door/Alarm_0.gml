if(place_meeting(x+collision_offset_x,y+collision_offset_y, obj_player)){
    obj_player.small_keys--;
    instance_destroy(self)
}