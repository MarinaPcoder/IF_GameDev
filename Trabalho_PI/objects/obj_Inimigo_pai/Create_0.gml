estado_idle = new estado();
estado_stun = new estado();
estado_walk = new estado();
estado_attack = new estado();
estado_hurt = new estado();
estado_atual = estado_idle;
estado_atual.inicia();

// Variaveis comuns a todos os inimigos
xscale = 1;

stun_timer = 0;

tempo_estado = game_get_speed(gamespeed_fps) * 10;
timer_estado = tempo_estado;
postox = 0;
postoy = 0;

alvo = noone;
direcao_vertical = 0; // -1 para cima, 0 para horizontal, 1 para baixo

// Define o tempo necessário para detectar (ex: 2 segundos)
tempo_para_detectar = game_get_speed(gamespeed_fps) / 1.5; 
// Timer que fará a contagem regressiva
timer_deteccao = tempo_para_detectar;

estado_stun.inicia = function()
{
	sprite_index = _sprite_stun;
	image_index = 0
	stun_timer = 300;

}

estado_stun.roda = function()
{
	if(stun_timer = 0)
	{
		troca_estado(estado_walk)
	}
}

#region Idle

estado_idle.inicia = function()
{
	sprite_index = _sprite_parado;
	image_index = 0;
	timer_estado = 300;
}

estado_idle.roda = function()
{
	timer_estado --;

	var _tempo = irandom(timer_estado);

	if(_tempo < 1)
	{
		troca_estado(estado_walk);
	}
		
	// --- INÍCIO DA LÓGICA DE DETECÇÃO COM TIMER ---
	var _alvo_encontrado = campo_visao(alcance_visao, abertura_visao);

	if (_alvo_encontrado != noone)
	{
		// Player está no campo de visão, começa a contagem regressiva
		timer_deteccao--;

		// Mostra a contagem no console (output)
		show_debug_message("Inimigo " + string(id) + " detectando... " + string(timer_deteccao));

		if (timer_deteccao <= 0)
		{
			// Tempo esgotado, inimigo detectou o player!
			alvo = _alvo_encontrado;
			troca_estado(estado_hurt);
		}
	}
	else
	{
		// Player não está no campo de visão, reseta o timer
		timer_deteccao = tempo_para_detectar;
	}
	// --- FIM DA LÓGICA DE DETECÇÃO COM TIMER ---
}

#endregion

#region Walk

estado_walk.inicia = function()
{
	sprite_index = _sprite_walk;
	image_index = 0;
	timer_estado = 200;

	//fazendo a patrulha
	postox = irandom(room_width);
	postoy = irandom(room_height);
	
	xscale = sign(postox - x)
}

estado_walk.roda = function()
{
	timer_estado --;
	
	var _tempo = irandom(timer_estado)
	
	if(_tempo <= 0)
	{
		 troca_estado(estado_idle);
		 return; // Sai da função para não mover neste frame
	}
	
	// --- (Seu código de direção e movimento permanece o mesmo) ---
	var _dx = postox - x;
	var _dy = postoy - y;
	if (abs(_dx) > abs(_dy)) {
		if (_dx != 0) xscale = sign(_dx);
		direcao_vertical = 0;
	} else {
		if (_dy != 0) direcao_vertical = sign(_dy);
		else direcao_vertical = 0;
	}
	mp_potential_step_object(postox, postoy, 1, all);
	
	// --- INÍCIO DA LÓGICA DE DETECÇÃO COM TIMER ---
	var _alvo_encontrado = campo_visao(alcance_visao, abertura_visao);

	if (_alvo_encontrado != noone)
	{
		// Player está no campo de visão, começa a contagem regressiva
		timer_deteccao--;

		// Mostra a contagem no console (output)
		show_debug_message("Inimigo " + string(id) + " detectando... " + string(timer_deteccao));

		if (timer_deteccao <= 0)
		{
			// Tempo esgotado, inimigo detectou o player!
			alvo = _alvo_encontrado;
			troca_estado(estado_hurt);
		}
	}
	else
	{
		// Player não está no campo de visão, reseta o timer
		timer_deteccao = tempo_para_detectar;
	}
	// --- FIM DA LÓGICA DE DETECÇÃO COM TIMER ---
}
 
#endregion

#region estado_attack

estado_attack.inicia = function() {
	sprite_index = _sprite_ataque;
	image_index = 0;
}

estado_attack.roda = function() {
	
	if (image_index >= image_number - .5) {
		troca_estado(estado_idle);
	}
	
}

estado_attack.finaliza = function() {
	alvo = noone
}

#endregion

#region estado_hurt
	
	estado_hurt.inicia = function() {
		sprite_index = _sprite_walk;
		image_index = 0;
		
		if (instance_exists(obj_jogador)) {
			alvo = obj_jogador.id;
		}
	}
	
	estado_hurt.roda = function() {
		// Se o alvo não existir mais
		if (!instance_exists(alvo)) {
			alvo = noone;
			troca_estado(estado_idle);
			return; // Sai da função
		}
	
		// --- INÍCIO DA MODIFICAÇÃO DE DIREÇÃO ---
		// Determina a direção com base no alvo
		var _dx = alvo.x - x;
		var _dy = alvo.y - y;

		if (abs(_dx) > abs(_dy)) {
			// Movimento primário é horizontal
			if (_dx != 0) xscale = sign(_dx);
			direcao_vertical = 0;
		} else {
			// Movimento primário é vertical
			if (_dy != 0) direcao_vertical = sign(_dy);
			else direcao_vertical = 0;
		}
		// --- FIM DA MODIFICAÇÃO DE DIREÇÃO ---
	
		// Seguindo meu alvo
		mp_potential_step_object(alvo.x, alvo.y, 1, all);
	
		// Atacando Player
		var _dist = point_distance(x, y, alvo.x, alvo.y);
	
		if (_dist <= 10) {
			troca_estado(estado_attack);	
		}
	
	
		// Sistema Horda
		var _n = instance_number(object_index);
		for (var i = 0; i <_n; i++) {
			var _slime = instance_find(object_index, i);
			if(_slime != id) {
				if(_slime.alvo != alvo) {
					var _distSlimes = point_distance(x, y, _slime.x, _slime.y)
					if (_distSlimes < 80) {
						with(_slime) {
							troca_estado(estado_hurt);
						}
					}
				}
			}
		}
	}

#endregion

#region Campo de visão

// @method wvisao(alcance, abertura)
campo_visao = function(_alcance, _abertura)
{
	var _x1, _y1, _x2, _y2;
	
	// Se a direção NÃO for vertical, cria um campo de visão horizontal
	if (direcao_vertical == 0)
	{
		_x1 = x;
		_y1 = y - (_abertura / 2); // Centraliza a visão no y do inimigo
		_x2 = x + (_alcance * xscale);
		_y2 = y + (_abertura / 2);
	}
	// Senão, cria um campo de visão vertical
	else
	{
		_x1 = x - (_abertura / 2); // Centraliza a visão no x do inimigo
		_y1 = y;
		_x2 = x + (_abertura / 2);
		_y2 = y + (_alcance * direcao_vertical); // Usa a direção vertical
	}

	// Para a função collision_rectangle, x1/y1 devem ser o canto superior-esquerdo
	// e x2/y2 o inferior-direito. Esta parte garante isso.
	var _col_x1 = min(_x1, _x2);
	var _col_y1 = min(_y1, _y2);
	var _col_x2 = max(_x1, _x2);
	var _col_y2 = max(_y1, _y2);
	
	// Desenhando o quadrado para debug (opcional)
	draw_rectangle(_col_x1, _col_y1, _col_x2, _col_y2, true);
	
	// Checando se o player está no campo de visão
	var _alvo = collision_rectangle(_col_x1, _col_y1, _col_x2, _col_y2, obj_jogador, false, true);
	
	return _alvo;
}

#endregion