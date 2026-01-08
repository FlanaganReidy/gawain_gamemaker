draw_sprite(ui_bar, 0, 0, 128)
draw_set_font(font_gb_mono)
draw_text(0,16, obj_player.current_health)
for(var i = 4; i <= obj_player.total_health; i += 4)
{
    if(i<obj_player.current_health){
        if(i <= 20){ 
            draw_sprite(ui_heart, 0, 112+(i*2), 128)
            
        } else{
            draw_sprite(ui_heart, 4, 112+(i*2), 136)
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