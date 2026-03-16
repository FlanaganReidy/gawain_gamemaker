
with(obj_inventory_manager){
    for(var _i = 0; _i < array_length(inventory_array); _i++){
        for(var _j = 0; _j < array_length(inventory_array[_i]); _j++){
            if (inventory_array[_i][_j][item_name] == 0){
                show_debug_message($"{_i}{_j}{other.name}")
                inventory_array[_i][_j][item_name] = other.name;
                inventory_array[_i][_j][item_sprite] = other.sprite_index;
                inventory_array[_i][_j][item_amount] ++;
                instance_destroy(other)
                return;
            }
        }
    }
}
