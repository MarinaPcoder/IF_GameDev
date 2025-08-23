//Criando as variaveis
messages = [];
current_message = -1;
current_char = 0;
draw_message = "";

//Velocidade que os caracteres aparecem e tecla para acelerar e passar o diáogo
char_speed = 0.5;
input_key = vk_space;

//Posicionamento da caixa
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();