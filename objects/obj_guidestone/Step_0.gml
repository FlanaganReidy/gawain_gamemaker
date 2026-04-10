if(instance_exists(obj_player) && distance_to_object(obj_player) < 3){
    if(InputCheck(INPUT_VERB.A)){
        create_dialog(message)
    }
}