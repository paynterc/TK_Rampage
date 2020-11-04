/************************
Game Organization
    Persistent Objects
        obj_game_settings is persistent. It sets some global variables and could be used when persistence is needed.
        obj_sound_control is persistent
    
    Other Controls    
        obj_game_control actually only controls game play. It is not persistent.




Room Persistence: 
    Set room persistent in obj_game_control:create.
    Turn off persistence when player dies. See obj_player:step















***************************/
