//Draws the stations in the store, their price, number of orderlies needed to man them,
// and how many residents can use them at a time
//TODO: Scrollbar!

draw_set_colour(c_white);
draw_rectangle(0, 0,display_get_width()/6 , display_get_height()/1.5, false);
//Back to menu
draw_sprite(spr_icons,2,0,0);
//height offset between sprites 
var yy, yoffset, i;
yy = 64;
xbeginoffset = 4;
yoffset = 64;
for (var i = 0; i < ds_grid_width(ctrl.store); i = i+2){
    yy += 64;
    draw_sprite(spr_stations, i, xbeginoffset, yy);
    draw_sprite(spr_stations, i+1, (display_get_width()/6)/2, yy);
}

//TODO: do stuff when station is selected from the store
if(mouse_check_button_pressed(mb_left)){
    if(display_mouse_get_x() > xbeginoffset && display_mouse_get_x() < 64){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
           
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            
        }
    }
    if(display_mouse_get_x() > (display_get_width()/6)/2 && display_mouse_get_x() < display_get_width()/6){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            
        }
    }
}
//if item is hovered over, then ifo needs to show in infobox
//info it needs is name, description, price, number of orderlies needed, number of residents that 
//can use them, upgrade?
else{
    if(display_mouse_get_x() > 0 && display_mouse_get_x() < 64){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            i = 0;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            i = 2;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            i = 4;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
    }
    if(display_mouse_get_x() > (display_get_width()/6)/2 && display_mouse_get_x() < ((display_get_width()/6)/2)+64){
        if(display_mouse_get_y() > 2*yoffset && display_mouse_get_y() < 3*yoffset){
            i = 1;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(display_mouse_get_y() > 3*yoffset && display_mouse_get_y() < 4*yoffset){
            i = 3;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(display_mouse_get_y() > 4*yoffset && display_mouse_get_y() < 5*yoffset){
            i = 5;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
    }
}
