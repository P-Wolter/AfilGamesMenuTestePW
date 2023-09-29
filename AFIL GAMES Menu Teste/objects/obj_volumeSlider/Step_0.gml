if !instance_exists(createdBy) //Se o botão volume sumir, destroy self
{instance_destroy(id)}
else
{

 if beingClicked = true
 {
  if (x < mouse_x) //Se estiver demais para a esquerda
  {
   var xmove = clamp(abs(x-mouse_x)/sprite_width,0,1)
   currentSlider = xmove*100
  }
  else
  {currentSlider = 0}
 }

 if obj_menuController.menu[obj_menuController.currentSubmenu,obj_menuController.currentOption] = createdBy.displayText //Se o botão atual tiver a função igual ao createdBy, executar
 {
  if keyboard_check(ord("D")) or keyboard_check(vk_right)
  {
   currentSlider+=0.5
   currentSlider = clamp(currentSlider,0,100)
  }
  else if keyboard_check(ord("A")) or keyboard_check(vk_left)
  {
   currentSlider-=0.5
   currentSlider = clamp(currentSlider,0,100)
  }
 }
}