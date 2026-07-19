event_inherited()
alarm[0]=alarm_interval
flip = 0
alarm[1] = 0
knockback_x = 0
knockback_y = 0
invuln = false;
damage = 1
hp = 2;

allScreens = struct_get(dungeon_one_structs.roomStruct, room_get_name(room))
//provides us with a struct containing (width, height, xoffset, yoffset) in tiles
//for the current screen
currentScreen = struct_get(allScreens, screen);

path_patrol = path_add();
mp_grid_path(global.grid, path_patrol, x+8, y+8, x + 72,  y-24, false);
path_set_kind(path_patrol, 0);
path_set_precision(path_patrol,5)
path_start(path_patrol, 1, path_action_reverse, true);