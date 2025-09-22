
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_set_font(Fonte_Menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var lenMenu = array_length(menu_incial);

// Defina o espaço entre os botões
var espacoEntreBotoes = 15;  // Ajuste esse valor conforme necessário

for(var i = 0; i < lenMenu; i++) {
	
	var _wGUI = display_get_gui_width();
	var _hGUI = display_get_gui_height();
	
	var _hstr = string_height("I");
	var _wstr = string_width(menu_incial[i]);
	
	var x1 = _wGUI / 2 - _wstr / 2;
	var y1 = _hGUI / 1.5 - _hstr / 1.5 + (_hstr + espacoEntreBotoes) * i // topo esquerdo
	
	var x2 = _wGUI / 2 + _wstr / 2;
	var y2 = _hGUI / 1.5 + _hstr / 1.5 + (_hstr + espacoEntreBotoes) * i; // baixo direita
	
	if (point_in_rectangle(_mx, _my, x1, y1, x2, y2)) {
		
		esc[i] = lerp(esc[i], 1.4, 0.15)
		
		if(mouse_check_button_pressed(mb_left)) {
			switch menu_incial [i]
			{
				case menu_incial [0]: // Jogar
				room_goto(SalaDeTeste);
					break;
				
				case menu_incial [1]: // Sair
				game_end();
					break;
				
				default:

					break;
			}
		}
	}
	else {
		esc[i] = lerp(esc[i], 1, 0.15)
	}
	
	draw_text_transformed(_wGUI / 2, _hGUI / 1.5 + (_hstr + espacoEntreBotoes) * i, menu_incial[i], esc[i], esc[i], 0);
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);