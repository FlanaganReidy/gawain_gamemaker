if (current_message < 0) exit;

var _str = messages[current_message].msg;

if (current_char < string_length(_str)){
    debug_event(current_char)
    if(current_char < 23){ 
        current_char += char_speed * (1 + keyboard_check(input_key));
        draw_msg = string_copy(_str, 0, current_char);
        debug_event(draw_msg)
    }else{
        current_char += char_speed * (1 + keyboard_check(input_key));
        draw_msg_2 = string_copy(_str, 23, current_char-23)
        debug_event(draw_msg_2)
    }
    
} else if (keyboard_check_pressed(input_key)){
    current_message++;
    if(current_message >= array_length(messages)){
        instance_destroy();
    } else {
        current_char = 0;
    }
}