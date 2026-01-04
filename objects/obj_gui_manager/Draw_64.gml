draw_sprite(ui_bar, 0, 0, 128)
for(var i = 0; i < obj_player.total_health; i += 4)
{
    

    if(i<=obj_player.current_health){
        if(i <= 20){
            if(obj_player.current_health/i >1){
                if(obj_player.current_health%4 == 0){
                    draw_sprite(ui_heart, 4, 120+(i*2), 128)
                } else {
                    draw_sprite(ui_heart, obj_player.current_health%4, 120+(i*2), 128)
                }
            } else {
                draw_sprite(ui_heart, obj_player.current_health%4, 120+(i*2), 128 )
            }
        } else{
            
            draw_sprite(ui_heart, 0, 120+(i*2), 136)
        }
        
    } else {
       if(i <= 20){
            draw_sprite(ui_heart, 0, 120+(i*2), 128)
        } else{
            draw_sprite(ui_heart, 0, 120+(i*2), 136)
        }
    }
}