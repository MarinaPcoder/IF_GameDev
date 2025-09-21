// Desenha o sprite normal do documento
draw_self();

// Opcional: Desenha um indicador visual se o documento já foi fotografado
if (!fotografado)
{
    draw_sprite_ext(Sprite_ativado, 0, x, y, 1, 1, 0, c_white, 0.5); // Um sprite diferente ou a versão translúcida do mesmo
}