menuLayer = 0 //Camada de menu dos botões gerados por este objeto. Impede botões de serem clicados enquanto há popups.
currentMenuLayer = 0 //Indica a camada atual. 1 ou maior indica que há 1 ou mais pop-ups.

//Número de botões na tela principal controlado por este array v
//Submenu 0
menu[0,0]="Jogar"
menu[0,1]="Configurações"
menu[0,2]="Sair"

//Submenu 1 - Configurações
menu[1,0]="Volume"
menu[1,1]="Tela Cheia"
menu[1,2]="Voltar"

list_menuOrder = ds_list_create()//Lista que controla qual menu o jogador será enviado ao clicar voltar
ds_list_add(list_menuOrder,0)//Adiciona o Submenu 0 na lista para lembrar qual menu voltar com opções "Voltar"

currentOption = -1 //Controla a opção atual.
currentSubmenu = 0 //Controla o submenu atual
maxOptions = array_length(menu[currentSubmenu])-1 //Tamanho de opções atual: Atualizado no step

scr_generateMenuButtons(0)//Função responsável por gerar os obj_menuButton