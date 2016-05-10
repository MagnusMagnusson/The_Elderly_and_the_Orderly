//switch sentence between store, station, person. Store is default case.
draw_set_colour(c_gray);
draw_rectangle(0 , display_get_height()/1.5, display_get_width()/6 , display_get_height(), false);
draw_set_colour(c_black);
draw_sprite(spr_icons, 1, (display_get_width()/6) - string_width(string(ctrl.funds))-40,  display_get_height()/1.5);
draw_text((display_get_width()/6) - string_width(string(ctrl.funds))-4, display_get_height()/1.5, ctrl.funds);

if(infoSelected){
    
}
else{
    switch(infoHover){
        case("cancel"):
            break;
        //#1 in store
        case("bed"):
            break;
        //#3 in store
        case("bingo"):
            break;
        //#5 in store
        case("sofa"):
            break;
        //#0 in store
        case("wall"):
            break;
        //#2 in store
        case("tv"):
            break;
        //#4 in store
        case("disco"):
            break;
    }

}

