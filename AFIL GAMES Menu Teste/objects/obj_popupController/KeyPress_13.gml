//Se nada for selecionado, não executar.
if obj_menuController.currentOption = -1
exit

if obj_menuController.currentMenuLayer = menuLayer //Se está no mesmo layer, executar
{
 //Detecta qual o botão atual e executa o necessário
 switch (ds_list_find_value(list_popupOptions,obj_menuController.currentOption)) //Acha o equivalente na lista
 {
    case "Sim":
        game_end()
    break;
	
	case "Não":
        with obj_menuButton
		{if menuLayer = obj_menuController.currentMenuLayer  instance_destroy(id)}
		obj_menuController.currentMenuLayer--
		instance_destroy(id)
		obj_menuController.currentOption = -1
    break;
 } 
}