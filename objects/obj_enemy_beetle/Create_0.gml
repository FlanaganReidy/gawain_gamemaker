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
        x+4, 
        y+4, 
        x+4 + edge_length, 
        y+4,
        true)
path_add_point(square_path_, x+4+edge_length, y+4+edge_length, 100);
path_add_point(square_path_, x+4, y+4+edge_length, 100);
path_add_point(square_path_, x+4, y+4, 100)
    
path_set_closed(square_path_, false); 

   
path_start(square_path_ ,1, path_action_continue, true)