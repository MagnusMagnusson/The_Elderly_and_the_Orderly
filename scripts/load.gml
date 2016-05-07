var arg;
if(argument_count == 0){
    arg = 3;
}
else{
    arg = argument[0];
}
if(!file_exists(working_directory + "data\hs.ini")){
    if(arg <= 0){
        return 0;
    }
    ini_open(working_directory + "data\hs.ini"){
        ini_write_string("Name","No1","AI Emperor");
        ini_write_string("Name","No2","AI King");
        ini_write_string("Name","No3","AI Lord");
        ini_write_string("Name","No4","AI Champion");
        ini_write_string("Name","No5","AI Contender");
        ini_write_string("Name","No6","AI Joe");
        ini_write_string("Name","No7","AI Somebody");
        ini_write_string("Name","No8","AI Tryhard");
        ini_write_string("Name","No9","AI Trysoft");
        ini_write_string("Name","No10","AI NewGuy");
        
        ini_write_real("score","No1",25000);
        ini_write_real("score","No2",20000);
        ini_write_real("score","No3",15000);
        ini_write_real("score","No4",10000);
        ini_write_real("score","No5",7000);
        ini_write_real("score","No6",5000);
        ini_write_real("score","No7",3000);
        ini_write_real("score","No8",1000);
        ini_write_real("score","No9",500);
        ini_write_real("score","No10",250);
        
    }
    ini_close();
    load(arg-1);
}
else{
    highscore_clear()
    ini_open(working_directory + "data\hs.ini");
    for(var i = 1; i <= 10; i++){
        var name, value;
        name = ini_read_string("Name","No"+string(i),"NULL{" + string(i) + "}");
        value = ini_read_real("score","No" + string(i),500 * (11 - i ));
        highscore_add(name,value);
    }
    ini_close()
}
