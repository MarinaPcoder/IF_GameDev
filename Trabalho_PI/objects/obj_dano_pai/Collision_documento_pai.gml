
// 1. Verifica se o documento já foi fotografado
if (!other.fotografado)
{
    // 2. Marca o documento como fotografado
    other.fotografado = true;
    
    // 3. AVISA AO SEU CRIADOR (O JOGADOR) PARA AUMENTAR O CONTADOR
    // Verificamos se o criador ainda existe, por segurança
    if (instance_exists(meu_criador))
    {
        meu_criador.documentos_fotografados_nesta_fase++;
        
        // Mostra uma mensagem no console para sabermos que funcionou
        var _total = meu_criador.documentos_fotografados_nesta_fase;
        show_debug_message("Documento fotografado! Total do jogador: " + string(_total));
    }
    
    // 4. Feedback para o jogador
    // audio_play_sound(snd_camera_click, 1, false);

}