//Verifica se o dialogo não começou
if(current_message < 0) exit;

var _str = messages [current_message].msg;

//Checa se a menssagem não foi escrita completamente
if(current_char < string_length(_str))
{
	//Aumenta o número de caracteres desenhados
	current_char += char_speed * (1 + keyboard_check(input_key));
	
	draw_message = string_copy(_str, 0,current_char);
}

else if(keyboard_check_pressed(input_key))
{
	current_message++;
	if(current_message >= array_length(messages))
	{
		instance_destroy();
	}
	else
	{
		current_char = 0;
	}
		
}