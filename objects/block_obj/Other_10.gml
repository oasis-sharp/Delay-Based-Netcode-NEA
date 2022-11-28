sprite_index = block_filled;
image_blend = c_black;


var up = array_translation(cols[0]);
var right = array_translation(cols[1]);
var down = array_translation(cols[2]);
var left = array_translation(cols[3]);

var b = block_obj;

var new_array = [up, right, down, left];

if (array_equals(new_array, [b,-4,b,-4])){
	
	sprite_index = pipe_single;
	
	if(array_translation(cols[0].cols[0]) == b){
		sprite_index = pipe;
	}
}
	
if(array_equals(new_array, [-4, b, -4, -4]) or array_equals(new_array, [-4,-4,-4, b])){
	instance_create_layer(x,y+8,"Instances_1", plat_deco);
}

if(array_equals(new_array, [-4, b, -4, b])){
	sprite_index = block_half;	
}

if(array_equals(new_array, [-4, -4, b ,b]) or array_equals(new_array, [b ,b, -4, -4]) or array_equals(new_array, [b ,-4, -4, b]) or array_equals(new_array, [-4,b , b, -4])){
	sprite_index = block_filled;
}

if(array_equals(new_array, [b,b,b,b])){
	if(array_translation(cols[1].cols[0]) == b){
		sprite_index = block_floor;
	}
}

