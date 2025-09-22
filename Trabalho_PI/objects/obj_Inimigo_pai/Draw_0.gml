draw_sprite_ext(sprite_index, image_index, x, y, xscale, image_yscale, image_angle, image_blend, image_alpha);

// Condição para desenhar o indicador:
//    Só desenha se o timer de detecção tiver começado (ou seja, for menor que o máximo).
if (timer_deteccao < tempo_para_detectar)
{
    // Define a posição do indicador, um pouco acima da cabeça do inimigo
    var _offset_y = 10; // Distância extra acima do sprite. Ajuste como quiser!
    var _draw_x = x;
    var _draw_y = y - sprite_height - _offset_y;

    // Calcula o progresso da detecção (um valor de 0.0 a 1.0)
    //    1.0 = detecção completa | 0.0 = detecção recém-iniciada
    var _progresso = 1.0 - (timer_deteccao / tempo_para_detectar);
    
    // Pega as dimensões do sprite de preenchimento
    var _spr_w = sprite_get_width(spr_exclamacao_act);
    var _spr_h = sprite_get_height(spr_exclamacao_act);
    
    // Calcula a altura da parte do sprite que vamos desenhar, com base no progresso
    var _fill_altura = round(_spr_h * _progresso);
    
    // Calcula o ponto Y de onde começaremos a "cortar" o sprite de preenchimento
    //    Isso faz o efeito de preencher de baixo para cima.
    var _fill_top_y = _spr_h - _fill_altura;

    // Desenha a parte do preenchimento vermelho.
    //    O sistema de coordenadas para a origem (Bottom Center) ajusta a posição automaticamente.
    if (_fill_altura > 0)
    {
         draw_sprite_part(spr_exclamacao_act, 0, 0, _fill_top_y, _spr_w, _fill_altura, _draw_x, _draw_y);
    }
   
    // Desenha a borda branca por cima de tudo, para dar o acabamento.
    draw_sprite(spr_exclamacao, 0, _draw_x, _draw_y);
} else if (timer_deteccao >= tempo_para_detectar) {
    
}