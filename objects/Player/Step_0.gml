/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
var keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
var keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
var keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
var keyActivate = keyboard_check_pressed(vk_space);
var keyAttack = keyboard_check_pressed(vk_shift);
var keyItem = keyboard_check_pressed(vk_control);
var xinput = keyRight - keyLeft;
var yinput = keyDown - keyUp;
move_and_collide(xinput * Spd, yinput * Spd, Obj_Collision)

{
 		#region Move State
	if (keyboard_check(vk_right))||keyboard_check(ord("D"))
	{
		x += Spd;
		sprite_index = Spr_Run;
		image_xscale = 1;
		image_speed = 0.6;
	}
	else if keyboard_check(vk_left)||keyboard_check(ord("A"))
 	{
		x -= Spd;
		sprite_index = Spr_Run;
		image_xscale = -1;
		image_speed = 0.6;
	} 
	
	else 
	{
		
		sprite_index = Spr_Idle;
		image_speed = 0.6;
	} 
	
	if(keyboard_check(vk_up))||keyboard_check(ord("W"))
	{
		y = y - 3;
	 	sprite_index = Spr_Run;
		//image_xscale = 2;
	}
	if(keyboard_check(vk_down))||keyboard_check(ord("S"))
	{
		y = y + 3;
		sprite_index = Spr_Run;
		//image_xscale = -2;
	}
	#endregion
}
depth = -y;
if(hp<=0){
	room_goto(GameOver)	
}
show_debug_message("Nos queda esto de vida:");
show_debug_message(hp);