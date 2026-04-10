move_speed = .75;
player_direction = 1;
facing = 0;
movement_state = "default"
i_state = false;

//layer tile Ids
water_tiles = layer_tilemap_get_id("Water");
deep_water_tiles = layer_tilemap_get_id("Deep_Water");
tilemap = layer_tilemap_get_id("Col");

seeds = 0;
small_keys = 1;

//vectors for drawing collision line
vector_x = 0;
vector_y = 0;

//room_respawn_coords
respawn_x = x;
respawn_y = y;


//alarms
//damage alarm
alarm[0]=0;

//pit/drown alarm
alarm[1]=0;

