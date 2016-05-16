//Draws the stations in the store, their price, number of orderlies needed to man them,
// and how many residents can use them at a time
//TODO: Scrollbar!
draw_sprite(ui_menu,0,0,0);
ui_draw_infobox();
//Draw funds
draw_set_alpha(0.6);
draw_funds(display_get_gui_width()/8, 555 );
draw_set_alpha(1);
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
        draw_sprite(spr_store_icons, i, xbeginoffset, yy);
        draw_sprite(store_border, i, xbeginoffset, yy);
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
        draw_sprite(spr_store_icons, i+1, (display_get_gui_width()/6)/2, yy);
        draw_sprite(store_border, 0, (display_get_gui_width()/6)/2, yy);
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
        draw_sprite(spr_go_back,1,0,4);       
    }
}

