///draw_cool_button(x,y,w,h,state,text);
//state: 0 = normal
//state: 1 = hovered
//state: 2 = clicked

var xx,yy,w,h,state,text;
xx = argument0;
yy = argument1;
w = argument2;
h = argument3;
state = argument4;
text = argument5;


draw_set_color($6ED7F9);
draw_rectangle(xx,yy,xx+w,yy+h,false);
draw_set_color(0);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((xx + xx + w) div 2,(yy + yy + h) div 2,text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

