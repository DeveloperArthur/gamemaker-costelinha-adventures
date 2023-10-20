/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_up){
	y-=1
}

if keyboard_check(vk_down){
	y+=1
}

if keyboard_check(vk_left){
	x-=1 image_xscale=1
}

if keyboard_check(vk_right){
	x+=1 image_xscale=-1
}

if items = 12 {
	audio_play_sound(passouNivel, 1, 0)
	
	// Código para mudar para a tela de fim quando a fase terminar
	if room_get_name(room) == "Room2" {
		audio_play_sound(passouNivel, 1, 0)
		audio_stop_sound(nivel2)
		room_goto(Room3);
	} else {
		room_goto_next()
	}
}

if keyboard_check(vk_anykey){
	sprite_index=CostelinhaAndando
} else {
	sprite_index=Costelinha
}