if (distance_to_object(obj_player) < 3 && InputPressed(INPUT_VERB.A)){
    if(image_index == switch_left){
        image_index = switch_right;
        room_goto(FloodedAqueductA_HighWater)
        
    } else {
        image_index = switch_left;
        room_goto(FloodedAqueductA_LowWater)
    }
}