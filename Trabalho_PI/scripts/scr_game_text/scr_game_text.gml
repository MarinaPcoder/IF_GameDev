/// @parame text_id

function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		case "audio-1":
		scr_text("Você se aproxima de um esabelecimento comercial e ouve duas vozes femininas discutindo")
		scr_option("Ouvir a conversa", "conversa 1");
		scr_option("Ignorar","final 1")
		
		case "conversa 1":
		scr_text("— Você percebeu? A matéria sobre os despejos foi tirada do jornal. Ontem de manhã eu tinha visto, mas agora… nada, como se nunca tivesse existido.");
		scr_text("— Eu percebi sim. Eles disseram que era ‘conteúdo sensível’, mas todo mundo sabe que foi censura. Parece que a verdade agora é decidida por quem tem poder.");
		scr_text("— Mas e a gente? Não é nosso direito poder falar, questionar, protestar?");
		scr_text("— É… em teoria. Mas aqui, até uma palavra mal colocada pode virar acusação. Não é que a gente não queira falar… é que já não sabemos se vale o risco.");
		scr_option("Parar de escutar","final 1")
		break;
		
		case "final 1":
		scr_text("Você se afasta do estabelecimento e anota oque ouviu em um caderno")
		
		case "audio-2":
		scr_text("Você passa por uma praça e percebe duas pessoas conversando em tom baixo, quase como se tivessem medo de serem ouvidas")
		scr_option("Ouvir a conversa", "conversa 2");
		scr_option("Ignorar","final 2")
		
		case "conversa 2":
		scr_text("— Você percebeu? A matéria sobre os despejos foi tirada do jornal. Ontem de manhã eu tinha visto, mas agora… nada, como se nunca tivesse existido.");
		scr_text("— Eu percebi sim. Eles disseram que era ‘conteúdo sensível’, mas todo mundo sabe que foi censura. Parece que a verdade agora é decidida por quem tem poder.");
		scr_text("— Mas e a gente? Não é nosso direito poder falar, questionar, protestar?");
		scr_text("— É… em teoria. Mas aqui, até uma palavra mal colocada pode virar acusação. Não é que a gente não queira falar… é que já não sabemos se vale o risco.");
		scr_option("Parar de escutar","final 2")
		break;
		
		case "final 2":
		scr_text("Você se afasta da praça e anota o que ouviu em seu caderno")
		
		
		case "audio-3":
		scr_text("Em uma rua tranquila, você ouve a voz de uma criança conversando com sua mãe")
		scr_option("Ouvir a conversa", "conversa 3");
		scr_option("Ignorar","final 3")
		
		case "conversa 3":
		scr_text("— Mãe, por que você sempre me pede pra não falar o que penso na escola?");
		scr_text("— Porque, meu filho… quando você fala alto, alguém escuta. E quando escutam, podem achar perigoso, mesmo que não seja.");
		scr_text("— Mas… eu só disse que não concordava com o que o professor falou.");
		scr_text("— Eu sei. Mas aqui, até discordar pode custar caro. Quero te proteger.");
		scr_text("— Mas não é injusto ter que calar tudo o que a gente sente?");
		scr_text("— É sim. Mas às vezes o medo fala mais alto que a justiça.");
		scr_option("Parar de escutar","final 3")
		break;
		
		case "final 3":
		scr_text("Você continua seu caminho refletindo sobre o que acabou de ouvir")

case "audio-4":
		scr_text("Perto do vestiário da fábrica, você escuta passos apressados e vozes cansadas")
		scr_option("Ouvir a conversa", "conversa 4");
		scr_option("Ignorar","final 4")
		
		case "conversa 4":
		scr_text("— Já faz doze horas que eu tô aqui… sem intervalo decente. E ainda dizem que se a gente reclamar, perde o salário do dia.");
		scr_text("— Eles sabem que a gente precisa do dinheiro. Não assinam carteira, não pagam hora extra. Isso não é trabalho, é abuso.");
		scr_option("Parar de escutar","final 4")
		break;
		
		case "final 4":
		scr_text("Você se afasta do vestiário e registra em seu caderno o que ouviu")
		

case "audio-5":
		scr_text("Na sala de controle da fábrica, duas vozes frias discutem sobre metas e punições")
		scr_option("Ouvir a conversa", "conversa 5");
		scr_option("Ignorar","final 5")
		
		case "conversa 5":
		scr_text("— Se eles não baterem a meta, corta a comida do refeitório. Eles vão trabalhar mais rápido com fome.");
		scr_text("— E os contratos? Alguns já estão vencidos.");
		scr_text("— Não importa. Eles nem têm cópia pra provar. A gente renova quando for conveniente… ou não renova.");
		scr_option("Parar de escutar","final 5")
		break;
		
		case "final 5":
		scr_text("Você deixa a sala de controle para trás, carregando o peso do que escutou")
		

case "audio-6":
		scr_text("Num beco atrás da fábrica, você escuta a voz aflita de um jovem trabalhador")
		scr_option("Ouvir a conversa", "conversa 6");
		scr_option("Ignorar","final 6")
		
		case "conversa 6":
		scr_text("— Eu tenho só 15 anos. Eles sabem. Disseram que não precisa documento, só que eu faça silêncio. Se eu contar pra alguém, eles ameaçam minha família.");
		scr_text("— Isso é crime… Eles não podem te obrigar a trabalhar assim.");
		scr_text("— Podem sim, se ninguém ver. Por isso a gente precisa de provas.");
		scr_option("Parar de escutar","final 6")
		break;
		
		case "final 6":
		scr_text("Você se afasta do beco e anota os detalhes da denúncia")
		

case "audio-7":
		scr_text("Na área externa da fábrica, você ouve a voz de um morador indignado")
		scr_option("Ouvir a conversa", "conversa 7");
		scr_option("Ignorar","final 7")
		
		case "conversa 7":
		scr_text("— Meu irmão ficou doente por causa da fumaça lá dentro. Pediu afastamento, mas falaram que sem registro ele não tem direito a nada.");
		scr_text("— Trabalho digno? Isso é escravidão moderna.");
		scr_option("Parar de escutar","final 7")
		break;
		
		case "final 7":
		scr_text("Você se distancia, refletindo sobre a gravidade da situação")
		
		
		//--Telefonema 1--//
		case "Dialogo-1":
    scr_text("Bom dia, agente. Espero que esteja sozinho.A situacao na cidade piorou. A censura esta se espalhando mais rapido do que previamos")
    scr_option("Qual e a missao?", "Resposta");
    scr_option("Ja ouvi rumores… jornais fechados, cartazes desaparecendo. Qual é a missao?", "Resposta")
break;

case "Resposta":
    scr_text("Precisamos de provas. Nada de suposicoes. Voce vai comecar pelas ruas centrais.Registre tudo: fotos, videos, audios. Cada detalhe conta. Se conseguirmos expor o que esta acontecendo, talvez ainda haja chance de impedir algo maior")
    scr_option("E a seguranca? Ouvi dizer que guardas estao patrulhando dia e noite", "Questionado");
    scr_option("Entendido. Provas primeiro, perguntas depois", "Concluido");    
    break;

case "Questionado":
    scr_text("Eles vao tentar te impedir. Use a camera ao seu favor. O flash pode te dar alguns segundos para escapar.Mas cuidado: um passo em falso e voce desaparece como os outros.");
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
    scr_text("Parabens. Todas as provas estao em maos.")
    scr_text("voce conseguiu mostrar a verdadeira face da faccao e do governo.");
    scr_text(" A cidade vai reagir,e a verdade sera conhecida. Mas lembre-se: a luta pelos direitos humanos nunca termina.")
    scr_text("Este e apenas o comeco de uma mudanca real...")
    scr_text("!!!!!!OBRIGADA PELA ATENCAO!!!!!!")
    break;
	
	
	
	
		
	}

}