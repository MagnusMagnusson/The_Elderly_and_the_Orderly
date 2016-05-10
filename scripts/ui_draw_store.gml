//Draws the stations in the store, their price, number of orderlies needed to man them,
// and how many residents can use them at a time
//TODO: Scrollbar!

draw_set_colour(c_white);
draw_rectangle(0, 0,display_get_width()/6 , display_get_height()/1.5, false);
//Back to menu
draw_sprite(spr_go_back,0,0,4);


//height offset between sprites 
var yy, yoffset, i, k;
yy = 64;
xbeginoffset = 4;
yoffset = 64;
//change k, for easier implementation of scrollbar, might need to change realmy stuff
k = 0;
//First image is cancel!
for (var i = k; i <= ds_grid_width(ctrl.store); i = i+2){
    yy += 64;
    draw_sprite(spr_stations, i, xbeginoffset, yy);
    if(i+1 >= ds_grid_width(ctrl.store)){
        break;
    }
    draw_sprite(spr_stations, i+1, (display_get_width()/6)/2, yy);
}

//TODO: do stuff when station is selected from the store?
/*
if(mouse_check_button_pressed(mb_left)){
    if((realmx() > xbeginoffset && realmx() < 64) || (realmx() > (display_get_gui_width()/6)/2 && realmx() < display_get_gui_width()/6)){
        if(realmy() > 2*yoffset && realmy() < 6*yoffset){
            
        }
    }

}*/
//if item is hovered over, then ifo needs to show in infobox
//info it needs is name, description, price, number of orderlies needed, number of residents that 
//can use them, upgrade?
/*else{
    if(realmx() > 0 && realmx() < 64){
        //This is cancel button position, we don't need to draw any to infobox
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            //i = 0;
            //ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            i = 1;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            i = 3;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            i = 5;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
    }
    if(realmx() > (display_get_gui_width()/6)/2 && realmx() < ((display_get_gui_width()/6)/2)+64){
        if(realmy() > 2*yoffset && realmy() < 3*yoffset){
            i = 0;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(realmy() > 3*yoffset && realmy() < 4*yoffset){
            i = 2;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
        if(realmy() > 4*yoffset && realmy() < 5*yoffset){
            i = 4;
            ui_draw_infobox(ctrl.store[#i, 1], ctrl.store[#i,2], ctrl.store[#i,4], ctrl.store[#i, 7], ctrl.store[#i, 8]);
        }
    }
}*/
