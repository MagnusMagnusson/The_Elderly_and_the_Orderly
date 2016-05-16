
//The menu box
draw_sprite(ui_menu,0,0,0);
ui_draw_infobox();
//Draw funds
draw_set_alpha(0.6);
draw_funds(display_get_gui_width()/8, 555 );
draw_set_alpha(1);
//Back to menu
if(infoHover == "back"){
    draw_sprite(spr_go_back,1,0,4);
}
else{
    draw_sprite(spr_go_back,0,0,4);
}
if(!ctrl.isDay){
    button[0] = "Residents";
    button[1] = "Applicants";    
    
    var xwidth =  display_get_gui_width()/6;
    yoffset = sprite_get_height(ui_menu_normal_buttons); //spr_go_back) + 8;// (display_get_gui_height()/1.5)/10; //string_height("Word");
    //ybuttonoffset = sprite_get_height(ui_menu_normal_buttons);
    draw_set_colour(c_black);
    draw_set_valign(fa_center);
    //Draw box for each item within the menu
    for(var i = 1; i < 3; i ++){
        if(realmx() > 0 && realmx() < xwidth && realmy() > yoffset*i && realmy() <= yoffset * (i+1)){
            draw_sprite_ext(ui_menu_buttons, 1, 0, yoffset*i, 1, 1, 0, $e6e6e6, 1);
            draw_set_colour(c_white);
        }
        else{
            draw_sprite(ui_menu_buttons, 1, 0, yoffset*i);
        }
       draw_text(12, yoffset*i + yoffset/2, button[i-1]);
       draw_set_colour(c_black);
    }
    if(chosen_res_app == "resident"){
        draw_sprite(ui_menu_buttons, 0, 0, yoffset);
        draw_text(12, yoffset + yoffset/2, button[0]);
       
    }
    else if(chosen_res_app == "applicant"){
        draw_sprite(ui_menu_buttons,0,0, yoffset*2);
        draw_text(12, yoffset*2 + yoffset/2, button[1]);
       
    }
}
/*else{
    button[0] = "Residents";    
    //button[2] = "Back"; //Fix this?
    
    var xwidth =  display_get_gui_width()/6;
    yoffset = sprite_get_height(spr_go_back) + 8;// (display_get_gui_height()/1.5)/10; //string_height("Word");
    draw_set_colour(c_black);
    draw_set_colour(c_fuchsia);
    //Draw box for each item within the menu
    for(var i = 1; i < 2; i ++){
        if(realmx() > 0 && realmx() < xwidth && realmy() > yoffset*i && realmy() <= yoffset * (i+1)){
            draw_set_colour(c_aqua);
        }
       draw_rectangle(0,yoffset*(i), xwidth, yoffset *(i+1), true);
       draw_text(12, yoffset*(i), button[i-1]);
       draw_set_colour(c_fuchsia);
       
    }
}*/
