//Profundidade bacana
depth = -y;

//Lendo os inputs do Player

up     = keyboard_check(ord("W"));
down   = keyboard_check(ord("S"));
left   = keyboard_check(ord("A"));
right  = keyboard_check(ord("D"));
interact = keyboard_check(ord("E"));

attack = keyboard_check_pressed(vk_space);


#region Interagir

// Verifica se está colidindo com algum objeto interagível
var alvo = instance_place(x, y, obj_interagivel);

if (alvo != noone) {

    if (interact) {
        // Executa a função de interação
        alvo.interagivel = false;
    }
}

#endregion

#region Seta

// --- LÓGICA DA SETA INDICADORA ---

// 1. Verifica se a seta deve ser exibida
//    (Só se o controlador de fase existe E o jogador não fotografou todos os documentos)
if (instance_exists(obj_controlador_fase) && 
    obj_jogador.documentos_fotografados_nesta_fase < obj_controlador_fase.documentos_totais_na_fase)
{
    // 2. Encontra o documento NÃO fotografado mais próximo
    var _doc_mais_proximo = noone;
    var _dist_minima = 2000; // Começa com uma distância infinita
    
    // Itera sobre TODAS as instâncias de obj_documento
    with (documento_pai)
    {
        // Só considera documentos que AINDA NÃO foram fotografados
        if (!fotografado)
        {
            var _dist_atual = point_distance(x, y, other.x, other.y); // 'other' é o obj_jogador
            if (_dist_atual < _dist_minima)
            {
                _dist_minima = _dist_atual;
                _doc_mais_proximo = id; // Guarda a ID deste documento
            }
        }
    }
    
    // 3. Atualiza a variável do jogador com o documento alvo
    documento_alvo_para_seta = _doc_mais_proximo;
}
else
{
    // Se todos os documentos foram fotografados ou o controlador não existe, não há alvo
    documento_alvo_para_seta = noone;
}


//Rodando a maquina de estado

roda_estado();