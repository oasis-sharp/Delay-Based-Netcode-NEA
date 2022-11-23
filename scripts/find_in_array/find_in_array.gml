/// @function find_in_array(array, term);

function find_in_array(array, term){
	var loop = 0;
	repeat (array_length_1d(array)) if (array[loop++] == term) return loop;
	return -4;
}


