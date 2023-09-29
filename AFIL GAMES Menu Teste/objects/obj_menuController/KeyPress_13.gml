//Se nada for selectionado, não executar.
if currentOption = -1
exit

if currentMenuLayer = menuLayer //Se está no mesmo layer, e não num layer de popup, executar
{
//Detecta qual o botão atual e executa o necessário
 switch (menu[currentSubmenu,currentOption]) //1 case para cada tipo de botão necessário
 {
    case "Jogar":
        room_goto(rm_gameplay)
    break;
	
    case "Configurações":
	    ds_list_add(list_menuOrder,1)//Guarda a camada de menu atual - útil para vários submenus dentro de um menu
		scr_generateMenuButtons(1) //Submenu 1 - Configurações
    break;

    case "Sair":
		var _inst = instance_create_depth(0,0,-1,obj_popupController)
		ds_list_add(_inst.list_popupOptions,"Sim","Não")//Edite o tamanho da lista de opções do popup aqui.
    break;
	
	case "Volume":
        if obj_volumeSlider.currentSlider = 0
		{obj_volumeSlider.currentSlider = obj_volumeSlider.savedVolume}
		else
		{
		 obj_volumeSlider.savedVolume = obj_volumeSlider.currentSlider
		 obj_volumeSlider.currentSlider = 0
		}
    break;
	
	case "Tela Cheia":
     if window_get_fullscreen()
     {window_set_fullscreen(false)}
     else
     {window_set_fullscreen(true)}
    break;
	
	case "Voltar":
        ds_list_delete(list_menuOrder,ds_list_size(list_menuOrder)-1)//Deleta o submenu atual da lista
		scr_generateMenuButtons(ds_list_find_value(list_menuOrder,ds_list_size(list_menuOrder)-1))//Volta para o submenu que o player originou
    break;
 } 
}