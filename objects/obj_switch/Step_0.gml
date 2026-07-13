if (distance_to_object(obj_player) < 3 && InputPressed(INPUT_VERB.A)){
    if(lever_direction == true){
        room_goto(FloodedAqueductA_HighWater)
        
    } else {
        room_goto(FloodedAqueductA_LowWater)
    }
    image_index = !off
}