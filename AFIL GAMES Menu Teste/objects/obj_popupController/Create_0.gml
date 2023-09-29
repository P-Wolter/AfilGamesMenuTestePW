//Descobre o Layer atual, e vai para 1 camada acima para impedir interação com menus e popups anteriores
obj_menuController.currentMenuLayer++
menuLayer = obj_menuController.currentMenuLayer
depth = -menuLayer
obj_menuController.currentOption=-1//Reinicia opções

//Número de opções controladas por esta lista. As opções são definidas pelo que criou o pop-up
list_popupOptions = ds_list_create()

alarm_set(0,1) //Inicializa o Alarme 0, para realizar eventos após o Creation code e preenchimento da list_popupOptions.
//Assim, o tamanho da lista de opções do popup pode ser definida quando ele é criado, e qualquer tamanho pode ser usado.