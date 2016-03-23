yy = irandom_range(room_height / 2, (room_height/4)*3);
xx = room_width + obj_wall.sprite_width;

if (timer > 0) {
    timer -= 1;
} else {
    timer =  irandom_range(60, 75);
    instance_create(xx, yy, obj_wall);
    if (irandom(5) == 3) {
        instance_create(xx, yy - 60, obj_bird);
    }
}
