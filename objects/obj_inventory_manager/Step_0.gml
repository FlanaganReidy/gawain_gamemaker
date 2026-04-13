if(InputPressed(INPUT_VERB.PAUSE)){ 
    state.isPaused = !state.isPaused;
    if(!state.isPaused){
        obj_gui_manager.startX=0;
        obj_gui_manager.startY=128;
    }
} 
if(state.isPaused){
    if(keyboard_check_pressed(ord("A"))){
        if(cursor_x>0){
            cursor_x--;
        }
    } else if(keyboard_check_pressed(ord("D"))){
       if(cursor_x<_columns-1){
               cursor_x++;
        } 
         if(cursor_y==-1 && cursor_x>=1){
            cursor_x = 1;
        }
    }
    if(keyboard_check_pressed(ord("W"))){
        if(cursor_y>=0){
            cursor_y--;
        }
        if(cursor_y==-1 && cursor_x >= 1){
            cursor_x = 1;
        }
    } else if (keyboard_check_pressed(ord("S"))){
        if(cursor_y<_rows-1){
            cursor_y++;
        }
    }
    if(InputPressed(INPUT_VERB.A)){
        if(selected_x != -1 && selected_y != -2){ 
            if(((selected_x ==0 || selected_x == 1) && selected_y == -1) && 
               ((cursor_x ==0  ||cursor_x ==1 )&& cursor_y ==-1)){
                var temp = state.a_button;
                state.a_button =  state.b_button;
                state.b_button = temp;
                selected_x = -1;
                selected_y = -2;
            } else if(selected_y== -1 && selected_x==0){
                var temp = state.a_button;
                state.a_button = inventory_array[cursor_x][cursor_y]
                inventory_array[cursor_x][cursor_y] = temp
                selected_x = -1;
                selected_y = -2;
            } else if(selected_y== -1 && selected_x==1){
                var temp = state.b_button;
                state.b_button = inventory_array[cursor_x][cursor_y];
                inventory_array[cursor_x][cursor_y] = temp;
                selected_x = -1;
                selected_y = -2;
            } else if(cursor_x==0 && cursor_y==-1){
                var temp = state.a_button
                state.a_button = inventory_array[selected_x][selected_y] 
                inventory_array[selected_x][selected_y] = temp;
                selected_x = -1;
                selected_y = -2;
            } else if(cursor_x==1&&cursor_y==-1){
                var temp = state.b_button
                state.b_button = inventory_array[selected_x][selected_y]
                inventory_array[selected_x][selected_y] = temp
                selected_x = -1;
                selected_y = -2;
            }else { 
                var temp = inventory_array[cursor_x][cursor_y]
                inventory_array[cursor_x][cursor_y] = inventory_array[selected_x][selected_y]
                inventory_array[selected_x][selected_y]= temp;
                selected_x = -1;
                selected_y = -2;
            }
        } else {
            selected_x=cursor_x;
            selected_y=cursor_y;
        }
        
        
    } else if(InputPressed(INPUT_VERB.B)){
        selected_x = -1;
        selected_y = -2;
    }
}

