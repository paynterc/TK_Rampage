///scr_poweralert(txt)
alrt = instance_create(room_width/2,room_height/3, obj_text_poweralert);
alrt.text = argument[0];
audio_play_sound(snd_powerup1,1,0);
