
//matching the key in puzzle struct
//
//these are tiles within the screen from room offset
//x offset in pixels
//y offset
offset_x = 0;
offset_y = 0;
puzzle_data = 0;
tilemap = layer_tilemap_get_id("Floor")
//array of [x,y] locations in tiles within the room.
//0,0 is top left this is what we're checking solved state against
