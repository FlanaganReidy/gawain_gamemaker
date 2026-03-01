if(place_meeting(x,bbox_bottom,obj_player)){
    move_speed = .5
    target_y = y - global.tile_size_
}

if(target_x == x && target_y == y){
    move_speed = 0
}


var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed , _ver *  move_speed, [tilemap], undefined, undefined, undefined, move_speed, move_speed)
