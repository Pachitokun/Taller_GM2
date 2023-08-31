/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyLeft = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyLeft = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);



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