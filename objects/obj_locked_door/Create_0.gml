collision_offset_x = 0
collision_offset_y = 0
switch (facing) 
{
	case "left":
        image_index = 2
        collision_offset_x = -8
        collision_offset_y = 0
        break;
    case "right":
        image_index = 0
        collision_offset_x = 8
        collision_offset_y = 0
        break;
    case "up":
        collision_offset_x = 0
        collision_offset_y = -8
        image_index = 3
        break;
    case "down":
        image_index = 1
        collision_offset_x = 0
        collision_offset_y = -8
        break;
}
alarm[0]=0;