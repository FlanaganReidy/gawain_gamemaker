if(instance_exists(obj_player) && distance_to_object(obj_player) < 3){
    if(InputPressed(INPUT_VERB.A)){
        create_dialog(message)
    }
}