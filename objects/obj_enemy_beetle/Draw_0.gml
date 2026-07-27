draw_path(square_path_, x ,y, true);
if(x- xprevious >= 0){
    image_xscale = 1
} else {
    
    image_xscale = -1
}
sprite_index = beetle_horn_right
if(y-yprevious > 0){
    sprite_index = beetle_horn_down
} else if (y-yprevious < 0) {
    sprite_index = beetle_horn_up
}
draw_self();