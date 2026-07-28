if(!isSliding && !isSolved && canPush){
    if(place_meeting(x,bbox_bottom-7,obj_player)){
        if(InputCheck(INPUT_VERB.UP)){
            push_counter++;
        } else {
            push_counter = 0;
        }
        if(push_counter > 40) {
            isSliding= true; 
            target_y = y - grid_square_size;
            push_counter = 0
        }
        
    }
    if(place_meeting(x,bbox_top+7,obj_player)){
        if(InputCheck(INPUT_VERB.DOWN)){
            push_counter++
        } else {
            push_counter = 0;
        }
        if(push_counter > 40) {
            isSliding= true;
            target_y = y + grid_square_size
            push_counter = 0;
        }
    }
    if(place_meeting(bbox_left+7,y,obj_player)){
        if(InputCheck(INPUT_VERB.RIGHT)){
            push_counter++
        } else {
            push_counter = 0;
        }
        if(push_counter > 40) {
            isSliding= true;
            target_x = x + grid_square_size
            push_counter = 0;
        }    
    }
    if(place_meeting(bbox_right-7,y,obj_player)){
        if(InputCheck(INPUT_VERB.LEFT)){
            push_counter++
        } else {
            push_counter = 0;
        }
        if(push_counter > 40) {
            isSliding= true;
            target_x = x - grid_square_size 
            push_counter =0;
        }    
    }
}

var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed , _ver *  move_speed, [tilemap, obj_obstacle_parent], undefined, undefined, undefined, move_speed, move_speed)


if(target_x == x && target_y == y){
    if(isSolved == false && isSliding == true){
        if(x == goalX) && (y == goalY){
            isSolved = true;
            instance_create_depth(90*global.tile_size_,23*global.tile_size_, depth, obj_item_key,{z_value:100})
            canPush = false;
        }
    }
    isSliding = false;
}
