if menuLayer = obj_menuController.currentMenuLayer //Se está no mesmo layer, executar
{
 if instance_exists(obj_popupController) //Se há um popup, dá prioridade
 {
  with obj_popupController//Executa a mesma função do Enter
  {if menuLayer = obj_menuController.currentMenuLayer event_perform(ev_keypress,vk_enter)}
 }
 else
 {
  with obj_menuController//Executa a mesma função do Enter
  {event_perform(ev_keypress,vk_enter)}
 }
}