/*Draws the box info box*/

draw_set_colour(c_gray);
draw_rectangle(0 , display_get_gui_height()/1.5, display_get_gui_width()/6 , display_get_gui_height(), false);
draw_set_colour(c_black);
//Set font of funds to 14
draw_set_font(fnt_funds);
//Draw sprite for funds
draw_sprite(spr_funds, 0, (display_get_gui_width()/6) - string_width(string(ctrl.funds))-40,  display_get_gui_height()/1.5 + 4);
//Amount player has
draw_text((display_get_gui_width()/6) - string_width(string(ctrl.funds))-4, display_get_gui_height()/1.5 + 8, ctrl.funds);
//Font back to 12
draw_set_font(fnt_normal);
