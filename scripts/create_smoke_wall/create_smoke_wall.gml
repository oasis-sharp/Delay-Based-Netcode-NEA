
function create_smoke_wall(count){
	while(count > 0){
		(instance_create_layer(x+(4*rightHeld-leftHeld),(y-4),"Instances", smoke_wall));
			count--;
		}
}