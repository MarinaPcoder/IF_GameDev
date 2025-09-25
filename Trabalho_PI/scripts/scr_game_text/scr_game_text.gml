/// @parame text_id

function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		//--Telefonema 1--//
		case "Dialogo-1":
    scr_text("Bom dia, agente. Espero que esteja sozinho.")
    scr_text("A situacao na cidade piorou. A censura esta se espalhando mais rapido do que previamos");
    scr_option("Qual e a missao?", "Resposta");
    scr_option("Ouvi rumores de jornais fechados", "Resposta")
break;

case "Resposta":
    scr_text("Precisamos de provas. Nada de suposicoes. Voce vai comecar pelas ruas centrais.")
    scr_text("Registre tudo: fotos, videos, audios. Cada detalhe conta. Se conseguirmos expor o que esta acontecendo, talvez ainda haja chance de impedir algo maior");
    scr_option("E a segurança? Os guardas sempre patrulham.", "Questionado");
    scr_option("Entendido. Provas primeiro, perguntas depois", "Concluido");    
    break;

case "Questionado":
    scr_text("Eles vao tentar te impedir. Use a camera ao seu favor. O flash pode te dar alguns segundos para escapar.")
	scr_text("Mas cuidado: um passo em falso e voce desaparece como os outros.");
    scr_option("Entendido. Provas primeiro, perguntas depois", "Concluido");
    break;

case "Concluido":
    scr_text("Confio em voce. A cidade precisa dessas evidencias… e de alguem corajoso o bastante para captura-las. Boa sorte, agente. A liberdade depende de nos");
    break;
	
	
//--Telefonema 2--//
case "Dialogo-2":
    scr_text("Voce conseguiu imagens que expoem a exploracao de trabalhadores. Contratos falsificados, menores trabalhando… tudo documentado.");
    scr_text("Isso fere o Artigo 23, que assegura o direito ao trabalho...");
    scr_text(" a escolha de emprego livre, a condicoes justas e favoraveis de trabalho e a protecao contra o desemprego.")
    scr_text("Na proxima fase, voce vera como a desigualdade e a violencia afetam a seguranca e a igualdade da populacao")
    break;

//--Telefonema 3--//
case "Dialogo-3":
    scr_text("Impressionante. Voce registrou a violencia e a discriminacao que a populacao marginalizada enfrenta.");
    scr_text("Isso e uma violacao do Artigo 7,que garante igualdade perante a lei e protecao contra qualquer forma de discriminacao,");
    scr_text(" e do Artigo 3, que assegura direito a vida, a liberdade e a seguranca pessoal.")
    scr_text("A ultima fase vai revelar como o poder e a corrupcao ameacam o direito a informacao e a liberdade de todos.")
    break;

//--Telefonema 4--//
case "Dialogo-4":
    scr_text("Parabens. Todas as provas estao em maos.")
    scr_text("voce conseguiu mostrar a verdadeira face da faccao e do governo.");
    scr_text(" A cidade vai reagir,e a verdade sera conhecida. Mas lembre-se: a luta pelos direitos humanos nunca termina.")
    scr_text("Este e apenas o comeco de uma mudanca real...")
    scr_game_text("!!!!!!OBRIGADA PELA ATENCAO!!!!!!")
    break;
		
	}

}