//Night menu

//Fastar hæðir, skrifað inn í hverja t.d. staff, resident, store...
//when hover, make light over þá hæð.

//The menu box
draw_sprite(ui_menu,0,0,0);
ui_draw_infobox();
//Draw funds
draw_set_alpha(0.6);
draw_funds(display_get_gui_width()/8, 555 );
draw_set_alpha(1);
button[0] = "Staff";
button[1] = "Residents";

var xwidth =  display_get_gui_width()/6;
yoffset = sprite_get_height(ui_menu_normal_buttons);; //string_height("Word");
draw_set_colour(c_black);
draw_set_valign(fa_center);
//Draw box for each item within the menu
for(var i = 0; i < 2; i ++){
    if(realmx() > 0 && realmx() < xwidth && realmy() > yoffset*i && realmy() <= yoffset * (i+1)){
        draw_sprite_ext(ui_menu_buttons, 1, 0, yoffset*i, 1, 1, 0, $e6e6e6, 1);
        draw_set_colour(c_white);
    }
    else{
        draw_sprite(ui_menu_buttons, 1, 0, yoffset*i);
    }
   draw_text(12, yoffset*i + yoffset/2, button[i]);
   draw_set_colour(c_black);
}

