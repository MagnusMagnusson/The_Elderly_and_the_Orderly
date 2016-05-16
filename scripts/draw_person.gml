///draw_person(x,y,person,facing);

//A lot of cool code
var _x,_y,people,head,body,hair,legs,facing, off;
off = 0;
if(argument_count < 4){
    facing = 0;
}
else{
    facing = argument[3];
}

_x = argument[0];
_y = argument[1];
people = argument[2];
head = people.head;
body = people.body;
hair = people.hair;
legs = people.legs;

if(people.xprevious != people.x || people.yprevious != people.y){
    off = -4*(current_second & 1);
}

draw_sprite(legs,(4 - facing) % 4,_x,_y + off);
draw_sprite(body,(4 - facing) % 4,_x,_y);
draw_sprite(head,(4 - facing) % 4,_x,_y);
draw_sprite(spr_person_eyes,((4 - facing) % 4) + (4*ctrl.isDay),_x,_y);
draw_sprite(hair,(4 - facing) % 4,_x,_y);
