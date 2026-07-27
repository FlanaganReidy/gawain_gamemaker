state_ = {
	screen_scale:3,
    a_button:[0, 0,0],
    b_button:[0, 0,0],
    isPaused:false, 
    gawain_status:{
        total_health:12,
        current_health:12
    },
    gravity:0.3
}
left_ = 0;
right_ = 1
#macro switch_left global.left_
#macro switch_right global.right_
#macro state global.state_