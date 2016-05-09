//Fastar hæðir, skrifað inn í hverja t.d. staff, resident, store...
//when hover, make light over þá hæð.

//The menu box
draw_set_colour(c_white);
draw_rectangle(0, 0,display_get_width()/6 , display_get_height()/1.5, false);

button[0] = "Store";
button[1] = "Staff";
button[2] = "Residents";
button[3] = "Start Day";
var xwidth =  display_get_width()/6;
yoffset = (display_get_height()/1.5)/10; //string_height("Word");
draw_set_colour(c_black);
//Draw box for each item within the men
for(var i = 0; i < 4; i ++){
   draw_rectangle(0,yoffset*i, xwidth, yoffset *(i+1), true);
   draw_text(12, yoffset*i, button[i]);
}
state = true;
//Array of stuff that is seen in menu




