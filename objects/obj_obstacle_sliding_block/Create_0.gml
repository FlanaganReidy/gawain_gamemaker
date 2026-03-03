target_x = x
target_y = y

//block types
//slide until collision
//slide # of squares
isSliding = false;

move_speed = 1

grid_square_size = global.tile_size_*2

left_bound = x - 8;
right_boung =x + 8;
upper_bound = y - 8;
lower_bound = y + 8
tilemap = layer_tilemap_get_id("Col");
push_counter = 0