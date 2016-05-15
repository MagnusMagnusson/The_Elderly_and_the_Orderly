//Draws the stations in the store, their price, number of orderlies needed to man them,
// and how many residents can use them at a time
//TODO: Scrollbar!

draw_set_colour($ffcc99);
draw_rectangle(0, 0,display_get_gui_width()/6 , display_get_gui_height()/1.5, false);
//Back to menu
draw_sprite(spr_go_back,0,0,4);


//height offset between sprites 
var yy, yoffset, i, k;
yy = 72;
xbeginoffset = 12;
//change k, for easier implementation of scrollbar, might need to change realmy stuff
k = 0;
//stations at lvl 1 in store

//First image is cancel!
for (var i = k; i < sprite_get_number(spr_store_icons); i = i+2){
    yy += 72;
    //When hovering we draw rectangle around the sprite
    if(realmx() > xbeginoffset && realmx() < xbeginoffset + sprite_get_width(spr_store_icons) && realmy() > yy && realmy() < yy + sprite_get_height(spr_store_icons)){
        draw_set_color(c_red);
        draw_rectangle(xbeginoffset, yy, xbeginoffset + sprite_get_width(spr_store_icons), yy + sprite_get_height(spr_store_icons), true);
        draw_set_colour($ffcc99);
        draw_sprite(spr_store_icons, i, xbeginoffset, yy);
    }
    //Otherwise just print the sprite
    else{
        draw_sprite(spr_store_icons, i, xbeginoffset, yy);
    }
    //To not draw too many sprite images (when we have odd number of stations)
    if(i+1 >= sprite_get_number(spr_store_icons)){
        break;
    }
    //When hovering we draw rectangle around the sprite
    if(realmx() > (display_get_gui_width()/6)/2 && realmx() < (display_get_gui_width()/6)/2 + sprite_get_width(spr_store_icons) && realmy() > yy && realmy() < yy + sprite_get_height(spr_store_icons)){
        draw_set_color(c_red);
        draw_rectangle((display_get_width()/6)/2, yy, (display_get_gui_width()/6)/2 + sprite_get_width(spr_store_icons), yy + sprite_get_height(spr_store_icons), true);
        draw_set_colour($ffcc99);
        draw_sprite(spr_store_icons, i+1, (display_get_gui_width()/6)/2, yy);
    }
    //Otherwise just print the sprite
    else{
        draw_sprite(spr_store_icons, i+1, (display_get_gui_width()/6)/2, yy);
    }
}
//For button click effect on back button, not implemented correctly at the moment
/*if(back_effect){
    draw_sprite(spr_go_back,2,0,4);
}*/
if(hover && state == "store"){
    if(realmx() > 0 && realmx() < sprite_get_width(spr_go_back) && realmy() > 4 && realmy() < sprite_get_height(spr_go_back) + 4){
            //Back to menu
        draw_sprite(spr_go_back,0,0,4);
            
    }

}

