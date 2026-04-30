if(!isSliding && !isSolved){
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
    
    if(isSolved == false && isSliding == true && puzzle_location != "none"){
        var this_puzzle = struct_get(obj_room_manager.currentPuzzleGroup, puzzle_location)
        var solved_locations = this_puzzle.solved_locations
        matches = checkSolveLocation(x,y,solved_locations, tilemap)
        if(matches){
            this_puzzle.solve_count += 1;
            if(array_length(this_puzzle.solved_locations)== this_puzzle.solve_count){
                this_puzzle.solved = true;
                struct_set(obj_room_manager.currentPuzzleGroup, puzzle_location, this_puzzle)
                isSolved = true;
            }
        } 
    }
    isSliding = false;
}
