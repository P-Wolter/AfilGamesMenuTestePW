if obj_menuController.currentMenuLayer = menuLayer //Se está no mesmo layer, e não num layer de popup, executar
{
 if position_meeting(mouse_x, mouse_y, id) //Posição do mouse = Posição do Objeto
 {obj_menuController.currentOption = option}

 if obj_menuController.currentOption = option
 {image_blend = c_green}
 else
 {image_blend = c_white}
}
else 
 {image_blend = c_white}