
//The menu box
draw_set_colour($ffcc99);
draw_rectangle(0, 0,display_get_gui_width()/6 , display_get_gui_height()/1.5, false);
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
    yoffset = sprite_get_height(spr_go_back) + 8;// (display_get_gui_height()/1.5)/10; //string_height("Word");
    draw_set_colour(c_black);
    draw_set_colour(c_fuchsia);
    //Draw box for each item within the menu
    for(var i = 1; i < 3; i ++){
        if(realmx() > 0 && realmx() < xwidth && realmy() > yoffset*i && realmy() <= yoffset * (i+1)){
            draw_set_colour(c_aqua);
        }
       draw_rectangle(0,yoffset*(i), xwidth, yoffset *(i+1), true);
       draw_text(12, yoffset*(i), button[i-1]);
       draw_set_colour(c_fuchsia);
       
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
