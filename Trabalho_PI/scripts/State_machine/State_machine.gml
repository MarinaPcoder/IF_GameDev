
//Criando a máquina de estados

function estado() constructor
{
	//iniciando do estado
	static inicia = function() {};
	
	//rodando o estado
	static roda = function() {};
	
	//finalizando do estado
	static finaliza = function() {};
}


//Funções para controlar a maquina de estado

//iniciando o estado
function inicia_estado(_estado)
{
	//salvando o estado passado em uma variavel
	estado_atual = _estado;
	
	//iniciando o estado atual
	estado_atual.inicia();
}

//rodando o estado atual

function roda_estado()
{
	
	estado_atual.roda();
	
}

//trocando de estado

function troca_estado(_estado)
{
	//finalizando o estado atual
	estado_atual.finaliza();
	
	//rodando o  proximo estado
	estado_atual = _estado;
	
	//iniciando o proximo estado
	estado_atual.inicia();
	
}



//Definindo a sprite

function define_sprite(_dir = 0, _sprite_side, _sprite_front, _sprite_back)
{

var _sprite;	


	switch(_dir)
	{
		case 0: _sprite = _sprite_side;  break; // Direita
		case 1: _sprite = _sprite_back; break; // Cima
		case 2: _sprite = _sprite_side;  break; // Esquerda
		case 3: _sprite = _sprite_front; break; // Baixo
	}
	
	
	return _sprite

}