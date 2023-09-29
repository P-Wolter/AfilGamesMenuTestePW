if currentMenuLayer = menuLayer //Se está no mesmo layer, e não num layer de popup, executar
{maxOptions = array_length(menu[currentSubmenu])-1} //Tamanho de opções atual

//Move seleção do menu para cima
if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)
 {
  if currentOption = -1 //Garante que apertar UP no começo seleciona a primeira opção.
  {currentOption = 0}
  else if currentOption <= 0 //Move para a última opção se passar do limite
  {currentOption = maxOptions}
  else
  currentOption-- 	
 }

//Move seleção do menu para baixo
if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
 {
  currentOption++ 	
  if currentOption > maxOptions //Move para a primeira opção se passar do limite
  {currentOption = 0}
 }