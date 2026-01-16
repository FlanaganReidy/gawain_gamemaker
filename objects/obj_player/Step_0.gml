var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor*move_speed,_ver*move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

//debug commands
 if(keyboard_check(ord("H"))){
    current_health = 12;
}


//walk type handler
if(tilemap_get_at_pixel(water_tiles, x, bbox_bottom)){
    movement_state = "shallow_water"
} else {
    movement_state = "default"
}


if(movement_state=="default"){
    if(_hor != 0 or _ver != 0 )
{
    image_xscale = 1;
    if(_ver>0) sprite_index = Gawain_walk_down; 
    else if(_ver<0) sprite_index = Gawain_walk_up;
    else if(_hor>0) sprite_index = Gawain_walk_right;
    else if(_hor<0){
        sprite_index = Gawain_walk_right;
        image_xscale = -1   ; 
    } 
    facing = point_direction(0,0, _hor, _ver) 
} else {
    if(sprite_index == Gawain_walk_down)sprite_index = Gawain_idle_down;
    if(sprite_index == Gawain_walk_up)sprite_index = Gawain_idle_up;
    if(sprite_index == Gawain_walk_right)sprite_index = Gawain_idle_right;
    if(image_xscale == -1) sprite_index=Gawain_idle_right;
    
}
    
} else if (movement_state == "shallow_water") {
    if(_hor != 0 or _ver != 0 )
{
    image_xscale = 1;
    if(_ver>0) sprite_index = Gawain_water_down; 
    else if(_ver<0) sprite_index = Gawain_water_up;
    else if(_hor>0) sprite_index = Gawain_water_right;
    else if(_hor<0){
        sprite_index = Gawain_water_right;
        image_xscale = -1   ; 
    } 
    facing = point_direction(0,0, _hor, _ver) 
} else {
    if(sprite_index == Gawain_water_down)sprite_index = Gawain_water_idle_down;
    if(sprite_index == Gawain_water_up)sprite_index = Gawain_water_idle_up;
    if(sprite_index == Gawain_water_right)sprite_index = Gawain_water_idle_right;
    if(image_xscale == -1) sprite_index=Gawain_water_idle_right;
    
}
}

//sword swing code
if(keyboard_check_pressed(vk_space))
{
    if(instance_exists(obj_sword_swing)) exit;
   var _inst = instance_create_depth(x,y ,depth, obj_sword_swing)
    _inst.image_angle = facing - 90;
    
}

