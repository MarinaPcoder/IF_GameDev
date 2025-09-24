draw_sprite_ext(sprite_index, image_index, x, y, xscale, image_yscale, image_angle, image_blend, image_alpha);

// Evento Draw do obj_inimigo


if (timer_deteccao < tempo_para_detectar and estado_atual != estado_hurt and estado_atual != estado_stun and estado_atual != estado_attack)
{
    // --- POSICIONAMENTO ---
	
    var _offset_y = 8; 
    var _draw_x = x;
    var _draw_y = y - sprite_height - _offset_y;


    // Isso garante que o progresso sempre ficará entre 0.0 e 1, evitando o bug.
    var _progresso = clamp(1.0 - (timer_deteccao / tempo_para_detectar), 0, 1);
    
    // Pega as dimensões do sprite de preenchimento (o vermelho)
    var _spr_w = sprite_get_width(spr_exclamacao_fill);
    var _spr_h = sprite_get_height(spr_exclamacao_fill);
    
    // Calcula a altura da parte do sprite que vamos desenhar
    var _fill_altura = round(_spr_h * _progresso);
    
    // Calcula o ponto Y de onde começaremos a "cortar" o sprite de preenchimento (de cima para baixo)
    var _fill_top_y_no_sprite = _spr_h - _fill_altura;

	// --- DESENHO ---

	// Desenha a parte do preenchimento vermelho.
	if (_fill_altura > 0)
	{
		// A CORREÇÃO DE POSICIONAMENTO ESTÁ AQUI:
		// Calculamos as coordenadas do canto SUPERIOR ESQUERDO para o draw_sprite_part,
		// baseando-nos na posição da origem (Bottom Center) do nosso sprite.
		var _fill_draw_x = _draw_x - (_spr_w / 2) + 0.5;
		var _fill_draw_y = _draw_y - _fill_altura;

		draw_sprite_part(
		    spr_exclamacao_fill,      // O sprite de preenchimento vermelho
		    0,                        // subimage
		    0,                        // left (no sprite)
		    _fill_top_y_no_sprite,    // top (no sprite) - O ponto Y que calculamos
		    _spr_w,                   // width (no sprite)
		    _fill_altura,             // height (no sprite) - A altura que calculamos
		    _fill_draw_x,             // x onde desenhar (USANDO O X CORRIGIDO)
		    _fill_draw_y              // y onde desenhar (USANDO O Y CORRIGIDO)
		);
	}
    // Desenha a borda branca (usando seu sprite `spr_exclamacao`) por cima de tudo.
    draw_sprite(spr_exclamacao_borda, 0, _draw_x, _draw_y);
}