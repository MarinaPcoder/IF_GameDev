
if(room == Cidade) {
	draw_set_font(Fonte_Menu);
	// Pega o total de documentos necessários diretamente do controlador
	var _total_necessario = obj_controlador_fase.documentos_totais_na_fase;

	// Pega quantos o jogador fotografou (a variável 'other' se refere ao obj_jogador)
	var _total_do_jogador = obj_jogador.documentos_fotografados_nesta_fase;
	
	draw_text(50, 50,string(_total_do_jogador) + " / " + string(_total_necessario) + " provas coletadas");

}