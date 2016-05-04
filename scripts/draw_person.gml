///draw_person(x,y,person);

//A lot of cool code
var _x,_y,people,head,body,hair,legs;
_x = argument0;
_y = argument1;
people = argument2;
head = people.head;
body = people.body;
hair = people.hair;
legs = people.legs;
draw_sprite(legs,0,_x,_y);
draw_sprite(body,0,_x,_y);
draw_sprite(head,0,_x,_y);
draw_sprite(hair,0,_x,_y);
