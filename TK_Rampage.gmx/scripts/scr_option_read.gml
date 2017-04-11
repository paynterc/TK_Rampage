/// Save option to ini file
// scr_option_read(KEY_string,KEY_default);
ini_open(INI_FILE);
var op = ini_read_real( 'OPTIONS', argument[0], argument[1] );
ini_close();

return op;
