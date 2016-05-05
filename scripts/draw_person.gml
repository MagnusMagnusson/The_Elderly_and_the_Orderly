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

var sub;
if(people.xprevious > people.x){
    sub = 1;
}
else{
    if(people.xprevious < people.x){
        sub = 3;
    }
    else{
        if(people.yprevious < people.y){
            sub = 0;
        }
        else{
            sub = 2;
        }
    }
    
}

draw_sprite(legs,sub,_x,_y);
draw_sprite(body,sub,_x,_y);
draw_sprite(head,sub,_x,_y);
draw_sprite(hair,sub,_x,_y);
