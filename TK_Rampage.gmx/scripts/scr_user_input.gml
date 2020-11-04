/// Abstracting user input
// scr_user_input(input_name)
// "fire", "moveleft", "moveup", "interact"
// Gamepad setup (thresholds, etc.) is done in obj_game_control


switch(argument0){
    case INPUT_GRAB:
        return keyboard_check(vk_space) || mouse_check_button(mb_left) || gamepad_button_value(global.pad, gp_shoulderrb);
        break;
    case INPUT_THROW:
        return  (mouse_check_button(mb_right) && mouse_check_button(mb_left)) || mouse_check_button(mb_left);
        break;
    case INPUT_AIM:
        return  mouse_check_button(mb_right) && !mouse_check_button(mb_left);
        break;
    case INPUT_MV_UP:
        return keyboard_check(ord("W")) || gamepad_axis_value(global.pad, gp_axislv) < 0;
        break;
    case INPUT_MV_LEFT:
        return keyboard_check(ord("A")) || gamepad_axis_value(global.pad, gp_axislh)< 0;
        break;
    case INPUT_MV_RIGHT:
        return keyboard_check(ord("D"))|| gamepad_axis_value(global.pad, gp_axislh)> 0;
        break;
    case INPUT_MV_DOWN:
        return keyboard_check(ord("S")) || gamepad_axis_value(global.pad, gp_axislv) > 0;
        break;                          
    case INPUT_TK_UP:
        return keyboard_check(vk_up) || gamepad_axis_value(global.pad, gp_axislv) < 0;
        break;
    case INPUT_TK_LEFT:
        return keyboard_check(vk_left) || gamepad_axis_value(global.pad, gp_axislh)< 0;
        break;
    case INPUT_TK_RIGHT:
        return keyboard_check(vk_right)|| gamepad_axis_value(global.pad, gp_axislh)> 0;
        break;
    case INPUT_TK_DOWN:
        return keyboard_check(vk_down) || gamepad_axis_value(global.pad, gp_axislv) > 0;
        break;
    case INPUT_MENU_BACK:
        return keyboard_check_pressed(vk_escape);
        break;
    case INPUT_MENU_OPTION_NEXT:
        return keyboard_check_pressed(vk_down);
        break;
    case INPUT_MENU_OPTION_PREV:
        return keyboard_check_pressed(vk_up);
        break;
    case INPUT_MENU_OPTION_SELECT:
        return keyboard_check_pressed(vk_enter) || mouse_check_button_released(mb_left);
        break;               
    case "point_dir":
        var pdir = noone;
        if( gamepad_is_connected(global.pad) ){
            var h_point = gamepad_axis_value(global.pad, gp_axisrh);
            var v_point = gamepad_axis_value(global.pad, gp_axisrv);
            if ((h_point != 0) || (v_point != 0))
            {
                pdir = point_direction(0, 0, h_point, v_point);
            }
        }else{
            pdir = point_direction(x,y,mouse_x,mouse_y);
        }
        return pdir;
        break;        
    default:
        return false;
}


