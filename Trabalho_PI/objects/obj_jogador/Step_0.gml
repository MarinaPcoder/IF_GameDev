//Profundidade bacana
depth = -y;

//Lendo os inputs do Player

up     = keyboard_check(ord("W"));
down   = keyboard_check(ord("S"));
left   = keyboard_check(ord("A"));
right  = keyboard_check(ord("D"));
interact = keyboard_check(ord("E"));

attack = keyboard_check_pressed(vk_space);

// Verifica se está colidindo com algum objeto interagível
var alvo = instance_place(x, y, obj_butao);

if (alvo != noone) {

    
    if (interact) {
        // Executa a função de interação
        alvo.interagivel = false;
    }
}

//Rodando a maquina de estado

roda_estado();
