
function create_smoke_walk(count){
	while(count > 0){
		(instance_create_layer(x+(4*rightHeld-leftHeld),(y-1),"Instances", smoke_wall));
			count--;
		}
}