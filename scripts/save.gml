ini_open(working_directory + "data\hs.ini");
for(var i = 1; i <= 10; i++){
    ini_write_string("Name","No"+string(i),highscore_name(i))
    ini_write_real("score","No"+string(i),highscore_value(i))
}
ini_close();
