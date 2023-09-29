//Descobrir a posição do sprite e a quantidade atual de áudio
audioQuantity = (currentSlider/maxSlider)
global.volume = audioQuantity*100
var _sliderX = x+(audioQuantity*sprite_width)


draw_self()
draw_set_color(c_black)
draw_set_font(fnt_menu)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_sprite(spr_volumeSliderButton,0,_sliderX,y)
draw_text(x+40+sprite_width,y,"Volume: "+string_format(audioQuantity*100,2,0))