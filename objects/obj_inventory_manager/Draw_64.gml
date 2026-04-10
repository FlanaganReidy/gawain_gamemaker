if(state.isPaused){
    with(obj_gui_manager){
        startX = 0;
        startY = 0;
    }
    var _dx=_startX
    var _dy=_startY
    draw_sprite_stretched(ui_simple, 0,_dx,_dy,gui_w, gui_h - 16);
    _dx += 8;
    _dy += 8;
    draw_text(_dx, _dy, "ITEMS")
    _dx += 8;
    _dy += 8;
        for(var _i = 0; _i < array_length(inventory_array); _i++){
            _dx = 8;
            for(var _j = 0; _j < array_length(inventory_array[_i]); _j++){
            if (inventory_array[_j][_i][item_name] != 0){
                draw_sprite(inventory_array[_j][_i][item_sprite],0, _dx, _dy)
                if(inventory_array[_j][_i][item_amount]> 1){
                    draw_text(_dx+10, _dy+10, inventory_array[_j][_i][item_amount])
                }
            }
                if(_j==cursor_x && _i==cursor_y){
                    draw_sprite(cursor,0, _dx, _dy)
                }
                if(_j==selected_x&& _i==selected_y){
                    draw_sprite(select,0, _dx, _dy)
                }
            _dx += 16;
        }
        _dy+=16;    
            
    }
    
}