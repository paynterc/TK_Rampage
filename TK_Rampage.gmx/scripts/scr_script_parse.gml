/// Parses a string containing script name plus arguments. Accepts up to 5.
// scr_script_parse(string)
if(argument0==noone || argument0==""){
    return false;
}

var split = scr_str_split(argument0,",");
var script = asset_get_index(split[0]);
var acount = array_length_1d(split);

//script_execute(scr, arg0, arg1, arg2, ...);
switch(acount){
    case 1:
        script_execute(script)
        break;
    case 2:
        script_execute(script,split[1]);
        break;
    case 3:
        script_execute(script,split[1],split[2]);
        break;
    case 4:
        script_execute(script,split[1],split[2],split[3]);
        break;
    case 5:
        script_execute(script,split[1],split[2],split[3],split[4]);
        break;
    case 6:
        script_execute(script,split[1],split[2],split[3],split[4],split[5]);
        break;

}

