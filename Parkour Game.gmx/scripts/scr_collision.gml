///scr_collision(global.xSpeed, ySpeed, Object);

if (place_meeting(x + global.xSpeed, y, obj_wall)) {

    while (!place_meeting(x + 1, y, obj_wall)) {
        x += 1;
    }
    
    global.xSpeed = 0;
    
    scr_death()

}

if (!place_meeting(x + 1, y, obj_wall)) {
    global.xSpeed += acc;
    global.xSpeed = clamp(global.xSpeed, 0, global.xSpeedD);
}



if (place_meeting(x, y + ySpeed, obj_wall)) {
    while (!place_meeting(x, y + sign(ySpeed), obj_wall)) {
        y += sign(ySpeed);
    }
    ySpeed = 0;
    
    if (place_meeting(x, y + 1, obj_bird)) {
        scr_death()
    }
}
/*
if (place_meeting(x + global.xSpeed, y + ySpeed, obj_wall))
{
    while (!place_meeting(x + sign(global.xSpeed), y + sign(ySpeed), obj_wall))
    {
        x += sign(global.xSpeed);
        y += sign(ySpeed);
    }
    global.xSpeed = 0;
    ySpeed = 0;
} else {
    global.xSpeed = 10;
    ySpeed = 10;
}
*/
