if (distance_to_object(obj_player) < 3 && InputPressed(INPUT_VERB.A)){
    if(image_index == status){
        room_goto(FloodedAqueductA_HighWater)
        status = 1;
        
    } else {
        image_index = status;
        room_goto(FloodedAqueductA_LowWater)
    }
}