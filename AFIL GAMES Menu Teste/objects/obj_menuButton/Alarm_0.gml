/// @description Eventos pós Creation Code
if displayText = "Volume"
{
	x-=100
	var _inst = instance_create_depth(x+150,y,depth,obj_volumeSlider)
	_inst.createdBy = id
}