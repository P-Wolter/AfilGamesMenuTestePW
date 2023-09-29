 var i = 0

 while i != ds_list_size(list_popupOptions) //Cria um número de botões igual ao tamanho da lista e ajeita a posição na tela.
 {
  var _newButton = instance_create_depth(room_width/2,(room_height/2)-(50*ds_list_size(list_popupOptions))+(i*100),depth-1,obj_menuButton)
  _newButton.displayText  = ds_list_find_value(list_popupOptions,i)
  _newButton.option = i
  _newButton.menuLayer = obj_menuController.currentMenuLayer
  _newButton.image_xscale = 1.25
  i++
 }

obj_menuController.maxOptions = ds_list_size(list_popupOptions)-1 //Tamanho de opções atual: Atualizado no step