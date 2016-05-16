if(O_Orderly.is_doing == noone){
    var saying, n;
    
    saying[0] = "Pretending to be busy";
    saying[1] = "Texting with girlfriend";
    saying[2] = "Texting with boyfriend";
    saying[3] = "Playing Hearthstone on phone";
    saying[4] = "Playing Candy Crush on phone";
    saying[5] = "Playing a retirement home simulator on phone";
    saying[6] = "Doing nothing";
    saying[7] = "Staring into the distance";
    saying[8] = "Holding in a fart";
    saying[9] = "Thinking about blaming fart on old people";
    saying[10] = "Pining for a career change";
    saying[11] = "Really thirsty, but wants Fanta";
    saying[12] = "Flirting with residents";
    saying[13] = "Planning retirement";
    saying[14] = "Humming Chopin's funeral march";
    saying[15] = "Hoping that Jon Snow lives";
    saying[16] = "Swiping right as fast as possible";
    saying[17] = "Looking forward to the weekend";
    saying[18] = "Wondering what a whippersnapper is";
    saying[19] = "Wondering what a poppycock is";
    
    n = 19;
    return saying[irandom(n)];
}
