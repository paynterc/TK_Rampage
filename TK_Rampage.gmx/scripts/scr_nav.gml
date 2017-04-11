/// Goto room
// scr_nav(room_name_string);

var rm = asset_get_index(argument[0]);
if(room_exists(rm)){
    room_goto(rm);   
}
