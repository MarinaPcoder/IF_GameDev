depth = -9999;

//Parâmetros

textbox_height= 64;
textbox_width = 260;
border = 8;
line_sep = 14;
line_width = textbox_width - border*2;
textb_spr = spr_box;
txtb_img = 0;
txtb_img_spd = 18/60;

//Texto
page = 0;
page_number = 0;
text[0] = "ABCDEFGHIJKLMNOPQRSTUVWXYZZ ZZZZZZZZZZZZZ?";
text[1] = "0123456789";
text[2] = "abcdefghijklmnopqrstuvwxyz";
text[3] = "Palavras bonitas"
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;


setup = false;