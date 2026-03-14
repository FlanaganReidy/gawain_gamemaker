//set font for game
font = font_add_sprite(gbs_mono_frames, 32, true, 2);
draw_set_font(font)
//draw ui bar
draw_sprite(ui_bar, 0, 0, 128)
//draw A button bind
if(state.a_button != "none"){
    draw_sprite(state.a_button,0,8,128);
}
//draw B button bind
if(state.b_button != "none"){
    draw_sprite(state.b_button,0, 40, 128 )
}
//draw sunflower seeds
draw_sprite(sunflower_seed, 0, 64, 128)
draw_text(75, 128, "x");
draw_text(75, 136, obj_player.seeds)
//draw small keys
draw_sprite(small_key, 0, 90, 128)
draw_text(104, 128, "x")
draw_text(104, 136, obj_player.small_keys)
// draw health
for(var i = 4; i <= obj_player.total_health; i += 4)
{
    if(i<obj_player.current_health){
        if(i <= 20){ 
            draw_sprite(ui_heart, 0, 112+(i*2), 128)
            
        } else{
            draw_sprite(ui_heart, 0, 112+(i*2), 136)
        }
        
    } else {
       if(i <= 20){
            if(i-obj_player.current_health < 4){
                draw_sprite(ui_heart, obj_player.current_health%4, 112+(i*2), 128 )
            } else {
                draw_sprite(ui_heart, 4, 112+(i*2), 128)
            }
        } else{
            draw_sprite(ui_heart, 4, 112+(i*2), 136)
        }
    }
}