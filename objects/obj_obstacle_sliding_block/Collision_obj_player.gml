debug_event("beep beep")
if(!isSliding){
 if(other.facing == 0){
            target_y -= global.tile_size_
            isSliding = true
            move_speed=.5
        }
        if(other.facing == 90){
            target_x -= global.tile_size_
            isSliding = true
            move_speed=.5
        }
}