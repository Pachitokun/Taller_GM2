/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign(fa_center);
draw_text_ext_transformed_color(10, 10, "Game Over", 10, 100, 5, 5, 0, c_white, c_black,c_black,c_white,1);
draw_set_halign(fa_left);


if(keyboard_check(vk_enter)){
	game_restart();	
}