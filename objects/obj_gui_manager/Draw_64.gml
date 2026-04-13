var _drawx = startX
var _drawy = startY
//set font for game
font = font_add_sprite(gbs_mono_frames, 32, true, 2);
draw_set_font(font)
//draw ui bar

draw_sprite(ui_bar, 0, _drawx, _drawy)
//draw A button bind
_drawx += 8;
if(state.isPaused){
    if(obj_inventory_manager.cursor_y == -1 && obj_inventory_manager.cursor_x==0){
        draw_sprite(cursor,0, _drawx, _drawy)
    } 
    if(obj_inventory_manager.selected_y == -1 && obj_inventory_manager.selected_x==0){
        draw_sprite(select,0, _drawx, _drawy)
    }
}
if(state.a_button[item_name] != 0){
    draw_sprite(state.a_button[item_sprite],0,_drawx,_drawy);
}
//draw B button bind
_drawx += 32;
if(state.isPaused){
    if(obj_inventory_manager.cursor_y == -1 && obj_inventory_manager.cursor_x==1){
        draw_sprite(cursor,0, _drawx, _drawy)
    } 
    if(obj_inventory_manager.selected_y == -1 && obj_inventory_manager.selected_x==1){
        draw_sprite(select,0, _drawx, _drawy)
    }
}
if(state.b_button[item_name] != 0){
    draw_sprite(state.b_button[item_sprite],0, _drawx, _drawy )
}
_drawx +=32
//draw sunflower seeds
draw_sprite(sunflower_seed, 0, _drawx, _drawy)
_drawx += 10
draw_text(_drawx, _drawy, "x");
draw_text(_drawx, _drawy+8, obj_player.seeds)
//draw small keys
_drawx += 10;
draw_sprite(small_key, 0, _drawx, _drawy)
_drawx += 12;
draw_text(_drawx, _drawy, "x")
draw_text(_drawx, _drawy+8, obj_player.small_keys)
// draw health
_drawx += 8
for(var i = 4; i <= state.gawain_status.total_health; i += 4)
{
    if(i<state.gawain_status.current_health){
        if(i <= 20){ 
            draw_sprite(ui_heart, 0, _drawx+(i*2), _drawy)
            
        } else{
            draw_sprite(ui_heart, 0, _drawx+(i*2), _drawy+8)
        }
        
    } else {
       if(i <= 20){
            if(i-state.gawain_status.current_health < 4){
                draw_sprite(ui_heart, state.gawain_status.current_health%4, _drawx+(i*2), _drawy )
            } else {
                draw_sprite(ui_heart, 4, _drawx+(i*2), _drawy+8)
            }
        } else{
            draw_sprite(ui_heart, 4, _drawx+(i*2), _drawy+8)
        }
    }
   
}