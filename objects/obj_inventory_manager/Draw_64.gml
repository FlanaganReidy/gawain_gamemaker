if(state.isPaused){
    draw_sprite_stretched(ui_simple, 0,0,0,gui_w, gui_h);
    _dx=8;
    _dy=8;
    draw_text(_dx, _dy, "ITEMS")
    _dx += 8;
    _dy += 8;
        for(var _i = 0; _i < array_length(inventory_array); _i++){
            _dx = 8;
            for(var _j = 0; _j < array_length(inventory_array[_i]); _j++){
            if (inventory_array[_i][_j][item_name] != 0){
                draw_sprite(inventory_array[_i][_j][item_sprite],0, _dx, _dy)
                draw_text(_dx+10, _dy+10, inventory_array[_i][_j][item_amount])
            }
                if(_i==cursor_x && _j==cursor_y){
                    draw_sprite(cursor,0, _dx, _dy)
                }
                if(_i==selected_x&& _j==selected_y){
                    draw_sprite(select,0, _dx, _dy)
                }
            _dx += 16;
        }
        _dy+=16;    
            
    }
    
}