//scr_sound_service(sound);

switch (argument[0])
{
    case "impact": 
        if(!audio_is_playing(snd_ef_impact2)){
            audio_play_sound(snd_ef_impact2,2,0); 
        }
        break;
    case "impact2": 
        if(!audio_is_playing(snd_ef_impact1)){
            audio_play_sound(snd_ef_impact1,2,0); 
        }
        break;
    case "splat": 
        if(!audio_is_playing(snd_ef_splat1)){
            audio_play_sound(snd_ef_splat1,2,0); 
        }
        break;
    case "splatloud":
        if(!audio_is_playing(snd_ef_splat2)){
            audio_play_sound(snd_ef_splat2,2,0); 
        }
        break;
    case "explosion1":
        if(!audio_is_playing(snd_ef_explosion1)){
            audio_play_sound(snd_ef_explosion1,2,0); 
        }
        break;
    case "bosslaser1":
        if(!audio_is_playing(snd_ef_bosslaser1)){
            audio_play_sound(snd_ef_bosslaser1,2,1); 
        }
        break;
    case "throw1":
        if(audio_is_playing(snd_throw1)){
            audio_stop_sound(snd_throw1); 
        }
        audio_play_sound(snd_throw1,1,0);
        break;
    case "pickup1":
        if(!audio_is_playing(snd_pickup1)){
            audio_play_sound(snd_pickup1,2,0); 
        }
        break;
        
}
