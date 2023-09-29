///@arg Submenu
function scr_generateMenuButtons(argument0){ //Script que gera botões navegáveis

with obj_menuController
{
 if instance_exists(obj_menuButton)
 {instance_destroy(obj_menuButton)} //Cleanup

 currentSubmenu = argument0 //Atualiza o submenu para a opção atual

 var i = 0

 while i < array_length(menu[currentSubmenu]) //Cria um número de botões igual ao tamanho da lista e ajeita a posição na tela.
 {
  var _newButton = instance_create_depth(room_width/2,(room_height/2)-(50*array_length(menu[currentSubmenu]))+(i*100),0,obj_menuButton)
  _newButton.displayText  = menu[currentSubmenu,i]
  _newButton.option = i
  _newButton.menuLayer = currentMenuLayer
  i++
 }
}

}