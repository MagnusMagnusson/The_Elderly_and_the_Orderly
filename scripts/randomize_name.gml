//Need to implement random names and random descriptions
var first;
var last;
var n,m;
n = 4;
m = 4;

//Male names
if(argument0){
    //First name
    first[0] = "James";
    first[1] = "Alex";
    first[2] = "Alexandro";
    first[3] = "Dondulus";
    first[4] = "John";
    
    //Last name
    last[0] = "bloomberg";
    last[1] = "tinklebottom";
    last[2] = "Smith";
    last[3] = "Micaello";
    last[4] = "SirOldMan";
}
//Female names
else{
    //First name
    first[0] = "Fay";
    first[1] = "Lady";
    n = 1;
    //Last name
    last[0] = "bloomberg";
    last[1] = "tinklebottom";
    last[2] = "Smith";
    last[3] = "Micaello";
    last[4] = "SirOldMan";
}


return first[irandom(n)] + " " + last[irandom(m)];
