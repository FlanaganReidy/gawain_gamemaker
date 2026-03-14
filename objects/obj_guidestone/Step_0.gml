if(instance_exists(obj_player) && distance_to_object(obj_player) < 3){
    if(keyboard_check_pressed(state.bindings.a_button_bind)){
        create_dialog(message)
    }
}