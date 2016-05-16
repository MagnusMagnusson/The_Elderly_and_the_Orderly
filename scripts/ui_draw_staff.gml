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
xoffset = 4;
startoffset = sprite_get_height(spr_go_back) + 4;
yoffset = string_height("Loy");
maxX = display_get_gui_width()/6 
maxY = display_get_gui_height()/1.5
//night
if(!ctrl.isDay){
    draw_set_colour(c_black);
    draw_text(xoffset, startoffset, "Orderlies: " + string(orderly_instance));
    draw_text(xoffset, startoffset + yoffset, "Salary cost: " + string(orderly_salary));
    //Add explanation e.g. less than 0 is firing, more than 0 is hiring
    //Minus image
    draw_sprite(spr_plus_minus, 1, 2*xoffset, 2*yoffset + startoffset);
    //the number of orderlies chosen, will be changed to sprites?
    draw_set_font(fnt_14pt);
    draw_text((display_get_gui_width()/6)/3 - xoffset, 2*yoffset + startoffset + sprite_get_height(spr_plus_minus)/3, orderly_number);
    draw_set_font(fnt_normal);
    //Plus image
    draw_sprite(spr_plus_minus, 0, xoffset + 128, 2*yoffset + startoffset);
    //Check image
    if(infoHover == "check"){
        draw_sprite(spr_cute_check, 2, xoffset + 128, 3*yoffset + startoffset + sprite_get_height(spr_plus_minus));
        draw_sprite(spr_cute_check, 0, xoffset + 128, 3*yoffset + startoffset + sprite_get_height(spr_plus_minus));
    }
    else{
        draw_sprite(spr_cute_check, 1, xoffset + 128, 3*yoffset + startoffset + sprite_get_height(spr_plus_minus));
        draw_sprite(spr_cute_check, 0,  xoffset + 128, 3*yoffset + startoffset + sprite_get_height(spr_plus_minus));
    }
}
//day
else{
    if(!ctrl.hide_profile){
        draw_sprite(ui_persons,0, sprite_get_width(ui_menu), display_get_gui_height() div 2)
        draw_sprite(ui_persons_line, 0,  display_get_gui_width() div 2 - 32 , display_get_gui_height() div 2);
        if(realmx() > sprite_get_width(ui_menu)+76 && realmx() < display_get_gui_width() div 3 - 24 && realmy() > display_get_gui_height() - 186 && realmy() <  display_get_gui_height() - 88){
            draw_sprite_ext(ui_house_button, 1, sprite_get_width(ui_menu)-17 , display_get_gui_height()div 2, 1, 1, 0, $e6e6e6, 1);
        }
        else{
            draw_sprite(ui_house_button, 0, sprite_get_width(ui_menu)-17, display_get_gui_height() div 2);
        }
        for(var i = 0; i < instance_number(O_Orderly);i++){//For each resident we currently have
            var I = instance_find(O_Orderly,i);
            
            //Draw the person on screen
            var X,Y;
            X = display_get_gui_width() div 2 + 8 + 62*(i % 10);
            Y = display_get_gui_height() div 6 + 115*(i div 10) ;
            draw_sprite_ext(I.legs,0,X,Y,2,2,0,c_white,1);
            draw_sprite_ext(I.body,0,X,Y,2,2,0,c_white,1);
            draw_sprite_ext(I.head,0,X,Y,2,2,0,c_white,1);
            draw_sprite_ext(I.hair,0,X,Y,2,2,0,c_white,1);
        }
            
        if(selected != noone){ //If someone is selected
            var I = instance_find(O_Orderly,selected);
            //Where to draw information about them
            var _x,_y;
            _x = (display_get_gui_width() div 3) + 4;//445;
            _y = (display_get_gui_height() div 6) + 31;//450;
            //Draw general information on them
            draw_set_font(fnt_screen);
            draw_set_halign(fa_center);
            draw_text(_x,_y,I.name)
        }
    }
    else{
        draw_sprite(ui_reverse_persons,0, sprite_get_width(ui_menu), display_get_gui_height() div 2);
        if(realmx() > sprite_get_width(ui_menu)+76 && realmx() < display_get_gui_width() div 3 - 24 && realmy() > 0 && realmy() <  76){
            draw_sprite_ext(ui_reverse_house_button, 1,  sprite_get_width(ui_menu), display_get_gui_height() div 2, 1, 1, 0, $e6e6e6, 1);
        }
        else{
            draw_sprite(ui_reverse_house_button, 0, sprite_get_width(ui_menu), display_get_gui_height() div 2)
        }
    }
}
