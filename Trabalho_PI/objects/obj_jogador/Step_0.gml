//Profundidade bacana
depth = -y;

//Lendo os inputs do Player

up     = keyboard_check(ord("W"));
down   = keyboard_check(ord("S"));
left   = keyboard_check(ord("A"));
right  = keyboard_check(ord("D"));

attack = keyboard_check_pressed(vk_space);


//Rodando a maquina de estado

roda_estado();
