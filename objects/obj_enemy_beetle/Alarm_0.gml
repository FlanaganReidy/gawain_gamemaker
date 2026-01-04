//walk back and forth logic
if(flip == 0){
    target_x = x - distance_to_walk 
    image_angle = -90
    flip = 1
} else {
    target_x = x + distance_to_walk
    image_angle = 90
    flip = 0
}
 alarm[0] = alarm_interval