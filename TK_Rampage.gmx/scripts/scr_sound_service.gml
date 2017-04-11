//scr_sound_service(sound);

switch (argument[0])
{
    case "impact": 
        if(!audio_is_playing(snd_ef_impact2)){
            audio_play_sound(snd_ef_impact2,2,0); 
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
}
