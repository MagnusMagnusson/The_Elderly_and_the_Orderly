draw_set_colour(c_white);
draw_rectangle(0, 0,display_get_width()/6 , display_get_height()/1.5, false);
//Back to menu
draw_sprite(spr_go_back,0,0,4);

xoffset = 4;
startoffset = sprite_get_height(spr_go_back) + 4;
yoffset = string_height("Loy");
maxX = display_get_gui_width()/6 
maxY = display_get_gui_height()/1.5
draw_set_colour(c_black);
draw_text(xoffset, startoffset, "Hired Orderlies: " + string(instance_number(O_Orderly)));
draw_text(xoffset, startoffset + yoffset, "Current salary cost: " + string(funds_salary()));
draw_sprite(spr_plus_minus, 1, 2*xoffset, 2*yoffset + startoffset);
draw_sprite(spr_plus_minus, 0, xoffset + 128, 2*yoffset + startoffset);
