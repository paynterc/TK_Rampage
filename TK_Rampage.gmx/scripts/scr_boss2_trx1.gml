/// scr_boss2_trx1
// transition animation to second state
image_speed=.5;

if (image_index > image_number - 1) {
    // Move to attack state
    state = STATE_GB_BOSS_ATTACK1;
    sprite_index = spr_boss_hive_attack;
    alarm[0]=room_speed * move_state_time;
    alarm[6]=1;
}

