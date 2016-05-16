///draw_funds(x,y)
var f = string(ctrl.funds);


for(var i = 1; i <= string_length(f); i++){
    var d = real(string_char_at(f,i));
    draw_sprite(spr_ui_funds,d,(argument0 - 25*string_length(f)) + 25*i, argument1); 
}
draw_sprite(spr_ui_funds,10,(argument0 - 25*(1+string_length(f))), argument1);
