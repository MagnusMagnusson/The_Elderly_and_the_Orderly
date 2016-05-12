//Draws the stations in the store, their price, number of orderlies needed to man them,
// and how many residents can use them at a time
//TODO: Scrollbar!

draw_set_colour($ffcc99);
draw_rectangle(0, 0,display_get_width()/6 , display_get_height()/1.5, false);
//Back to menu
draw_sprite(spr_go_back,0,0,4);


//height offset between sprites 
var yy, yoffset, i, k;
yy = 64;
xbeginoffset = 12;
yoffset = 64;
//change k, for easier implementation of scrollbar, might need to change realmy stuff
k = 0;
//stations at lvl 1 in store

//First image is cancel!
for (var i = k; i < sprite_get_number(spr_store_icons); i = i+2){
    yy += 72;
    if(realmx() > xbeginoffset && realmx() < xbeginoffset + sprite_get_width(spr_store_icons) && realmy() > yy && realmy() < yy + 64){
        draw_set_color(c_red);
        draw_rectangle(xbeginoffset, yy, xbeginoffset + sprite_get_width(spr_store_icons), yy + 64, true);
        draw_set_colour($ffcc99);
        draw_sprite(spr_store_icons, i, xbeginoffset, yy);
    }
    else{
        draw_sprite(spr_store_icons, i, xbeginoffset, yy);
    }
    if(i+1 >= sprite_get_number(spr_store_icons)){
        break;
    }
    if(realmx() > (display_get_width()/6)/2 && realmx() < (display_get_width()/6)/2 + sprite_get_width(spr_store_icons) && realmy() > yy && realmy() < yy + 64){
        draw_set_color(c_red);
        draw_rectangle((display_get_width()/6)/2, yy, (display_get_width()/6)/2 + sprite_get_width(spr_store_icons), yy + 64, true);
        draw_set_colour($ffcc99);
        draw_sprite(spr_store_icons, i+1, (display_get_width()/6)/2, yy);
    }
    else{
        draw_sprite(spr_store_icons, i+1, (display_get_width()/6)/2, yy);
    }
}
/*if(back_effect){
    draw_sprite(spr_go_back,2,0,4);
}*/
if(hover && state == "store"){
    if(realmx() > 0 && realmx() < 64 && realmy() > 0 && realmy() < 64){
            //Back to menu
        draw_sprite(spr_go_back,1,0,4);
            
    }

}

