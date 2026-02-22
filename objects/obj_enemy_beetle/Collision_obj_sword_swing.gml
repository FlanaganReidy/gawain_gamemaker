
    if(invuln == false){
        knockback_x = sign(x - other.x);
        knockback_y = sign(y - other.y);
        target_x += knockback_x * 5
        target_y += knockback_y * 5
        hp--;
        invuln = true;
        alarm[1] = 60
    }
    




