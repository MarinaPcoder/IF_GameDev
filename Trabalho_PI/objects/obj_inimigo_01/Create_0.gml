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
	}

#endregion