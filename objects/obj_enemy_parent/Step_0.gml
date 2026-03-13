if(instance_exists(obj_dialog)) exit;
    
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap]);
if(hp == 0){
    instance_create_depth(x,y,depth,obj_item_seed)
    instance_destroy(self)
}