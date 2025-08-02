// Inherit the parent event
event_inherited();

tempo_estado = game_get_speed(gamespeed_fps) * 10;
timer_estado = tempo_estado;
postox = 0;
postoy = 0;

alvo = noone;

estado_idle.inicia = function()
{
	sprite_index = spr_inimigo_chase_idle;
	image_index = 0;
	timer_estado = 300;
}

estado_idle.roda = function()
{
	timer_estado --;

	var _tempo = irandom(timer_estado)

	if(_tempo < 1)
		{
			troca_estado(estado_walk);
		}
}


#region Walk

estado_walk.inicia = function()
{
	sprite_index = spr_inimigo_chase_walk;
	image_index = 0;
	timer_estado = 200;

	//fazendo a patrulha
	postox = irandom(room_width);
	postoy = irandom(room_height);
	
	xscale = sign(postox - x)
}

estado_walk.roda = function()
{
	
	timer_estado --;
	
	var _tempo = irandom(timer_estado)
	
	if(_tempo <= 0)
	{
		 troca_estado(estado_idle);
	}
	
	// Desvio de obstaculos
	mp_potential_step_object(postox, postoy, 1, obj_colisor);
}
 
#endregion

#region estado_attack

estado_attack.inicia = function() {
	sprite_index = spr_slime_attack;
	image_index = 0;
}

estado_attack.roda = function() {
	
	if (image_index >= image_number - .5) {
		troca_estado(estado_idle);
	}
	
}

estado_attack.finaliza = function() {
	alvo = noone
}

#endregion

#region Chase

#endregion

#region estado_hurt
	
	estado_hurt.inicia = function() {
		sprite_index = spr_inimigo_chase_walk;
		image_index = 0;
		
		if (instance_exists(obj_jogador)) {
			alvo = obj_jogador.id;
		}
	}
	
	estado_hurt.roda = function() {
		// Se o alvo não existir mais
		if (!instance_exists(obj_jogador)) {
			alvo = noone;
			troca_estado(estado_idle);
		}
		
		// Definindo alvo
		
		// Seguindo meu alvo
		mp_potential_step_object(alvo.x, alvo.y, 1,  obj_colisor);
		
		// Atacando Player
		var _dist = point_distance(x, y, alvo.x, alvo.y);
		
		if (_dist <= 10) {
			troca_estado(estado_attack);	
		}
		
		xscale = sign(alvo.x - x);
		
		// Sistema Horda
		
		// Obtendo o número de inimigos nesse nível
		var _n = instance_number(object_index);
		
		for (var i = 0; i <_n; i++) {
			var _slime = instance_find(object_index, i);
			
			if(_slime != id) {
				if(_slime.alvo != alvo) {
					
					// distancia do alvo
					var _distSlimes = point_distance(x, y, _slime.x, _slime.y)
					
					if (_distSlimes < 80) {
						// Mandando a ordem para seguir o alvo!
						with(_slime) {
						troca_estado(estado_hurt);
						}
					}
					
				}
			}
		}
		
	}

#endregion