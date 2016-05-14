draw_set_colour($ffcc99);
draw_rectangle(0, 0,display_get_gui_width()/6 , display_get_gui_height()/1.5, false);
//Back to menu
if(infoHover == "back"){
    draw_sprite(spr_go_back,1,0,4);
}
else{
    draw_sprite(spr_go_back,0,0,4);
}
xoffset = 4;
startoffset = sprite_get_height(spr_go_back) + 4;
yoffset = string_height("Loy");
maxX = display_get_gui_width()/6 
maxY = display_get_gui_height()/1.5

draw_set_colour(c_black);
draw_text(xoffset, startoffset, "Orderlies: " + string(orderly_instance));
draw_text(xoffset, startoffset + yoffset, "Salary cost: " + string(orderly_salary));
//Add explanation e.g. less than 0 is firing, more than 0 is hiring
//Minus image
draw_sprite(spr_plus_minus, 1, 2*xoffset, 2*yoffset + startoffset);
//the number of orderlies chosen, will be changed to sprites?
draw_set_font(fnt_14pt);
draw_text((display_get_gui_width()/6)/2 - xoffset, 2*yoffset + startoffset + sprite_get_height(spr_plus_minus)/4, orderly_number);
draw_set_font(fnt_normal);
//Plus image
draw_sprite(spr_plus_minus, 0, xoffset + 128, 2*yoffset + startoffset);
//Check image
draw_sprite(spr_cute_check, 0,  xoffset + 128, 3*yoffset + startoffset + sprite_get_height(spr_plus_minus));
