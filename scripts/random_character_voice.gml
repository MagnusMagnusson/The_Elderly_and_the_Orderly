var object = argument0;

if(object == O_Resident){
    //Female
    if(!argument1){
        return choose("christ", "sweet","gud","witch");
    }
    else{
        return choose("rem", "coo","creepy","jchan","grump","brutus","breath")
    }
}
else if(object == O_Orderly){
    return choose("basic", "lazy", "ent");
}
