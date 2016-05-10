//switch sentence between store, station, person. Store is default case.
draw_set_colour(c_gray);
draw_rectangle(0 , display_get_height()/1.5, display_get_width()/6 , display_get_height(), false);
draw_set_colour(c_black);
draw_sprite(spr_icons, 1, (display_get_width()/6) - string_width(string(ctrl.funds))-40,  display_get_height()/1.5);
draw_text((display_get_width()/6) - string_width(string(ctrl.funds))-4, display_get_height()/1.5, ctrl.funds);

switch(infoState){
    case "store":
        break;
    case "station":
        break;
    case "person":
        break;
    default:
        break;
}
