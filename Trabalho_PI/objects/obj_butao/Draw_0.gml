draw_self();

if(debug_on == true) {
    if(alvo != noone) {
        draw_set_color(c_black);
        draw_line(x, y, alvo.x, alvo.y);
        draw_set_color(c_white);
    }
}