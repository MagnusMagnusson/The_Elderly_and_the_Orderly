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
//stations at lvl 1 in store

//First image is cancel!
for (var i = k; i < sprite_get_number(spr_store_icons); i = i+2){
    yy += 64;
    draw_sprite(spr_store_icons, i, xbeginoffset, yy);
    if(i+1 >= sprite_get_number(spr_store_icons)){
        break;
    }
    draw_sprite(spr_store_icons, i+1, (display_get_width()/6)/2, yy);
}

