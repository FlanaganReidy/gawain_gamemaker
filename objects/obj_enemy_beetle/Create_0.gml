event_inherited()
alarm[0]=5
alarm[1] = 0
invuln = false;
damage = 1
hp = 2;
edge_length = 56

allScreens = struct_get(dungeon_one_structs.roomStruct, room_get_name(room))
//provides us with a struct containing (width, height, xoffset, yoffset) in tiles
//for the current screen
currentScreen = struct_get(allScreens, screen);

    square_path_ = path_add();
    path_set_kind(square_path_, 0);
    path_set_precision(square_path_, 8);
  
mp_grid_path(
        global.grid, 
        square_path_, 
        x + edge_length/2, 
        y - edge_length/2, 
        x + edge_length/2, 
        y + edge_length/2,
        true)
    
path_set_closed(square_path_, false); 

   
path_start(square_path_ ,1, path_action_reverse, true)