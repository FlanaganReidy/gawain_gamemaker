move_speed = .75;
tilemap = layer_tilemap_get_id("Col");
player_direction = 1;
facing = 0;
movement_state = "default"
total_health = 12
current_health = 12
i_state = false;
//layer tile Ids
water_tiles = layer_tilemap_get_id("Water");
deep_water_tiles = layer_tilemap_get_id("Deep_Water");
seeds = 0;
small_keys = 1;
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

