if(!isSliding){
    if(place_meeting(x,bbox_bottom-7,obj_player)){
        push_counter++;
        if(push_counter > 20) {
            isSliding= true; 
            target_y = y - grid_square_size;
            push_counter = 0
        }
        
    }
    if(place_meeting(x,bbox_top+7,obj_player)){
         push_counter++;
        if(push_counter > 20) {
            isSliding= true;
            target_y = y + grid_square_size
            push_counter = 0;
        }
    }
    if(place_meeting(bbox_left+7,y,obj_player)){
        push_counter++;
        if(push_counter > 20) {
            isSliding= true;
            target_x = x + grid_square_size
            push_counter = 0;
        }    
    }
    if(place_meeting(bbox_right-7,y,obj_player)){
        push_counter++;
        if(push_counter > 20) {
            isSliding= true;
            target_x = x - grid_square_size 
            push_counter =0;
        }    
    }
}


var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed , _ver *  move_speed, [tilemap, obj_obstacle_parent], undefined, undefined, undefined, move_speed, move_speed)
