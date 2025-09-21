var accept_key = keyboard_check_pressed(ord("E"));
var textbox_x = camera_get_view_x(view_camera[0]);
var textbox_y = camera_get_view_y(view_camera[0]) + 144;

//setup
if setup == false
{
    setup = true;
    draw_set_font(global.font_main);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

    //loop pelas páginas
    page_number = array_length(text);
    for(var p = 0; p < page_number; p++)
    {
		
		//Armazena quantos caracteres existem em cada página no "Text_length array"
		text_length[p] = string_length(text[p]);
		
		text_x_offset[p] = 60;
        
    }
}

//Escrevendo o texto

if (draw_char < text_length[page])
{
	draw_char +=text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//Passando a página

if (accept_key)
{
	
	//Se terminou de escrever
	if (draw_char == text_length[page])
	{
		
		//Próxima página
		if (page < page_number-1)
		{
			
			page ++;
			draw_char = 0;
			
		}
		//Destroi a caixa
		else
		{
			
			instance_destroy();
			
		}
		
	}
	//Se não terminou
	else
	{
		
		draw_char = text_length[page];
		
	}
	
}


//Desenhando a textbox de fato agora confia

txtb_img += txtb_img_spd;
var txtb_spr_w = sprite_get_width(textb_spr);
var txtb_spr_h = sprite_get_height(textb_spr);

//Desenhando o fundo da textbox seja lá oque for

draw_sprite_ext(textb_spr, txtb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);

//Desenhando o texto de fato

var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);