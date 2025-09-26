// Evento Draw do obj_jogador

draw_self();

// ... (seu código para o indicador de detecção do inimigo, se estiver no jogador) ...

// --- DESENHO DA SETA INDICADORA ---
if (documento_alvo_para_seta != noone) // Só desenha se houver um documento alvo
{
    // Verificamos se o documento alvo ainda existe (pode ter sido destruído)
    if (instance_exists(documento_alvo_para_seta))
    {
        // Posição da seta (pode ser acima do jogador, por exemplo)
        var _seta_x = x + offset_seta_x;
        var _seta_y = y + offset_seta_y;

        // Calcula o ângulo da seta para apontar para o documento alvo
        var _angle = point_direction(_seta_x, _seta_y, documento_alvo_para_seta.x, documento_alvo_para_seta.y);
        
        // Desenha a seta
        draw_sprite_ext(spr_seta_documento, 0, _seta_x, _seta_y, 1, 1, _angle, c_white, 1);
    }
    else
    {
        // Se o documento alvo sumiu (fotografado/destruído), redefine o alvo
        documento_alvo_para_seta = noone;
    }
}
