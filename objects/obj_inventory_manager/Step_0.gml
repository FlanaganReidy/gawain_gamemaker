if(keyboard_check_pressed(vk_tab)){
    state.isPaused = !state.isPaused;
} 
if(state.isPaused){
    if(keyboard_check_pressed(ord("A"))){
        if(cursor_y>0){
            cursor_y--;
        }
    } else if(keyboard_check_pressed(ord("D"))){
        if(cursor_y<_columns-1){
            cursor_y++;
        }
    }
    if(keyboard_check_pressed(ord("W"))){
        if(cursor_x>0){
            cursor_x--;
        }
    } else if (keyboard_check_pressed(ord("S"))){
        if(cursor_x<_rows-1){
            cursor_x++;
        }
    }
    if(keyboard_check_pressed(state.bindings.a_button_bind)){
        if(selected_x != -1 && selected_y != -1){
            var temp = inventory_array[cursor_x][cursor_y]
            inventory_array[cursor_x][cursor_y] = inventory_array[selected_x][selected_y]
            inventory_array[selected_x][selected_y]= temp;
            selected_x = -1;
            selected_y = -1;
        } else {
            selected_x=cursor_x;
            selected_y=cursor_y;
        }
        
        
    } else if(keyboard_check_pressed(state.bindings.b_button_bind)){
        selected_x = -1;
        selected_y = -1;
    }
}

