if(!finished_create){
	finished_create+=1;
	array_push(cols, instance_position(x,y-8, tiles_parent),instance_position(x+8,y, tiles_parent));
	array_push(cols, instance_position(x,y+8, tiles_parent),instance_position(x-8,y, tiles_parent));
	event_user(0);	
}