#region Escurecer Tela
draw_set_color(c_black)
draw_set_alpha(0.9)
draw_rectangle(0,0,room_width,room_height,0)
#endregion

#region Setup de Draw/Fonte
draw_set_color(c_white)
draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
#endregion

draw_text(room_width/2,50,"Você deseja sair?")