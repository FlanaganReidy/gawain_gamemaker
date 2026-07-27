
if (z_value > 0 && vertical_speed > -max_vertical_speed) {
    vertical_speed -= state.gravity;
}


z_value += vertical_speed;
if(z_value < 0){
    if(bounce > 0){ 
        bounce--;
        vertical_speed = -vertical_speed *.5
        z_value = 0;
    } else{
        bounce = 2;
        vertical_speed = 0
        z_value = 0
    }
}