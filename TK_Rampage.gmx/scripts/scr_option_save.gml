/// Save option to ini file
// scr_option_save(KEY_string,KEY_value);
ini_open(INI_FILE);
ini_write_real( 'OPTIONS', argument[0], argument[1] );
ini_close();
